import 'dart:collection';

import 'package:flutter/material.dart';
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
  Set<Marker> markers = HashSet<Marker>();

  createMarers(GoogleMapController googleMapController) {
    markers.add(Marker(
      markerId: MarkerId('1'),
      position: mapCenter,
    ));
  }

  // createMarkerImageFromAsset() async {
  //   final ImageConfiguration imageConfiguration =
  //       createLocalImageConfiguration(Get.context!, size: Size.square(38));
  //   var temp = await BitmapDescriptor.fromAssetImage(
  //       imageConfiguration, 'images/map_cabinet1.png');
  //   markerSet.add(Marker(
  //     markerId: MarkerId("marker_1"),
  //     position: mapCenter,
  //     icon: temp,
  //   ));
  //   print(markerSet);
  // }
}
