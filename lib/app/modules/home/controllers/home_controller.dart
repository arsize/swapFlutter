import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:raintree/app/common/widgets/common_wigets.dart';
import 'package:raintree/app/entities/cabinet_list_model/cabinet_item.dart';
import 'package:raintree/app/entities/entities.dart';
import 'package:raintree/app/store/store.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../mixins/point.dart';
import '../mixins/marker.dart';
import '../mixins/cabinet.dart';

class HomeController extends GetxController with Point, Markers, Cabinet {
  // 控制器
  final store = Get.find<StoreController>();
  final cabinetResult = CabinetListModel().obs;
  late final PanelController panelController;
  GoogleMapController? mapController;
  // 响应式
  RxString currentModle = 'default'.obs;

  // 普通变量
  String selectMenu = "换电";
  late CabinetItem currentCabinetItem;
  LatLng mapCenter = LatLng(22.52898852325926, 113.83500415831804);

  final LayerLink layerLink = LayerLink();

  @override
  void onInit() {
    panelController = PanelController();
    super.onInit();
  }

  @override
  void dispose() {
    mapController!.dispose();
    super.dispose();
  }

  void changeMenu(str) {
    selectMenu = str;
    update();
  }

  void gotoNext() async {
    var _isBindVehicle = store.loginData.isBindVehicle;
    print(_isBindVehicle);
    if (_isBindVehicle == 0) {
      // 未绑定车辆
      arDialog(
        context: Get.context,
        content: "暂不能使用换电服务，请先绑定车辆",
        fn1: () {
          Get.back();
          Get.toNamed("/shop");
        },
        fn1Text: "无车，去购买",
        fn2: () {
          Get.back();
          Get.toNamed("/bind-contact");
        },
        fn2Text: "有车，去绑定",
      );
    } else {
      // 已绑定车辆
      resetPanelStatus();
      await Future.delayed(Duration(milliseconds: 500));
      Get.toNamed("/camera-scan");
    }
  }

// ---- 地图 ----------------------------------------------------
  void onMapCreated(GoogleMapController googleMapController) {
    mapController = googleMapController;
    setMarkersBitmap().then((res) async {
      cabinetResult(await getCabinets());
      // setNowPoint();
      drawCabinetMarkers();
    });
  }

  void setNowPoint() async {
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

    // mapController?.animateCamera(
    //   CameraUpdate.newLatLng(
    //     LatLng(point.latitude!, point.longitude!),
    //   ),
    // );
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

  /// 回到地图中心
  void resetPosition() {
    mapController?.animateCamera(CameraUpdate.newLatLngZoom(mapCenter, 12));
  }

  /// 渲染机柜Marker
  void drawCabinetMarkers() {
    var _cabinetData = cabinetResult.value.data;
    if (_cabinetData != null) {
      _cabinetData.cabinetList.map((item) {
        if (item.cabinetDid != null &&
            item.latitude != null &&
            item.longitude != null) {
          markers.add(
            Marker(
                markerId: MarkerId(item.cabinetDid!),
                position: LatLng(item.latitude!, item.longitude!),
                icon: markerBts[cabinetBoxStatus(item)]!,
                onTap: () async {
                  currentCabinetItem = item;
                  update();
                  panelController.animatePanelToPosition(
                    0.5,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.ease,
                  );
                  currentModle.value = "cabinet";
                  await Future.delayed(Duration(milliseconds: 300));
                  panelController.animatePanelToPosition(
                    0,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.ease,
                  );
                }),
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

  /// 地图点击事件
  void onMapTap(e) {
    resetPanelStatus();
  }

  /// 恢复panel状态
  void resetPanelStatus() async {
    if (currentModle.value == 'cabinet') {
      panelController.animatePanelToPosition(
        0.5,
        duration: Duration(milliseconds: 300),
        curve: Curves.ease,
      );
      currentModle.value = "default";
      await Future.delayed(Duration(milliseconds: 300));
      panelController.animatePanelToPosition(
        0,
        duration: Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    }
  }

  void showMap({title, latitude, longitude}) async {
    try {
      final description = "asia";
      final coords = Coords(latitude, longitude);
      final availableMaps = await MapLauncher.installedMaps;
      showModalBottomSheet(
        context: Get.context!,
        builder: (BuildContext context) {
          return SafeArea(
            child: SingleChildScrollView(
              child: Container(
                child: Wrap(
                  children: [
                    for (var map in availableMaps)
                      ListTile(
                        onTap: () => map.showMarker(
                          coords: coords,
                          title: title,
                          description: description,
                        ),
                        title: Text(map.mapName),
                        leading: SvgPicture.asset(
                          map.icon,
                          height: 30.0,
                          width: 30.0,
                        ),
                      )
                  ],
                ),
              ),
            ),
          );
        },
      );
    } catch (e) {
      print(e);
    }
  }
}
