import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:raintree/app/entities/entities.dart';
import 'package:raintree/app/store/store.dart';

import '../mixins/point.dart';
import '../mixins/marker.dart';
import '../mixins/cabinet.dart';

class HomeController extends GetxController with Point, Markers, Cabinet {
  // 控制器
  final store = Get.find<StoreController>();
  final cabinetResult = CabinetListModel().obs;
  GoogleMapController? mapController;
  // 响应式

  // 普通变量
  String selectMenu = "换电";
  LatLng mapCenter = LatLng(22.52898852325926, 113.83500415831804);

  final LayerLink layerLink = LayerLink();

  @override
  void onInit() {
    super.onInit();
  }

  void changeMenu(str) {
    selectMenu = str;
    update();
  }

// ---- 地图 ----------------------------------------------------
  void onMapCreated(GoogleMapController googleMapController) {
    mapController = googleMapController;
    setMarkersBitmap().then((res) async {
      cabinetResult(await getCabinets());
      await setNowPoint();
      drawCabinetMarkers();
    });
  }

  Future setNowPoint() async {
    LocationData point = await getNowPoint();
    mapCenter = LatLng(point.latitude!, point.longitude!);
    markers.add(
      Marker(
        rotation: point.heading!,
        markerId: MarkerId("mylocation"),
        position: mapCenter,
        icon: markerBts["location"]!,
      ),
    );

    mapController?.animateCamera(
      CameraUpdate.newLatLng(
        LatLng(point.latitude!, point.longitude!),
      ),
    );
    location.onLocationChanged.listen((LocationData currentLocation) {
      markers.add(
        Marker(
          rotation: currentLocation.heading!,
          markerId: MarkerId("mylocation"),
          position:
              LatLng(currentLocation.latitude!, currentLocation.longitude!),
          icon: markerBts["location"]!,
        ),
      );
      update();
    });
  }

  /// 渲染机柜Marker
  void drawCabinetMarkers() {
    var _cabinetData = cabinetResult.value.data;
    if (_cabinetData != null && _cabinetData.cabinetList != null) {
      _cabinetData.cabinetList!.map((item) {
        if (item.latitude != null && item.longitude != null) {
          markers.add(
            Marker(
              markerId: MarkerId(item.cabinetDid!),
              position: LatLng(item.latitude!, item.longitude!),
              icon: markerBts[cabinetBoxStatus(item)]!,
            ),
          );
        }
      }).toList();
      update();
    }
  }

  /// 地图移动Move
  void onCameraMove(CameraPosition cameraPosition) {
    print("在移动");
    print(cameraPosition);
  }
}
