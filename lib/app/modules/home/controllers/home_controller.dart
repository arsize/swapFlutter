import 'package:swapapp/app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:swapapp/app/store/store.dart';

class HomeController extends GetxController {
  StoreController store = Get.find();
  // 响应式变量

  // 普通变量
  String selectMenu = "换电";
  final LayerLink layerLink = LayerLink();

  @override
  void onInit() {
    super.onInit();
    setMarkerImage();
  }

  @override
  void dispose() {
    super.dispose();
  }

//---------------------------------------------------------------
  changeMenu(str) {
    selectMenu = str;
    update();
  }

// -------------------------地图相关-------------------------------------
  final LatLng mapCenter = LatLng(37.7786, -122.4375);
  Set<Marker> markers = {};
  late BitmapDescriptor _marker_icon;

  void setMarkerImage() async {
    _marker_icon = await BitmapDescriptor.fromAssetImage(
        createLocalImageConfiguration(Get.context!, size: Size(1, 1)),
        'images/map_marker_01.png');
  }

  void onMapCreated(GoogleMapController googleMapController) {
    markers.add(
      Marker(
        markerId: MarkerId("id_1"),
        position: mapCenter,
        icon: _marker_icon,
      ),
    );
    update();
  }
}
