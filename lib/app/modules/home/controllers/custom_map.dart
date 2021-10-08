/*
 * @Author: Arsize 
 * @Date: 2021-10-08 11:15:03 
 * @Describe: 地图
 */

import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../mixins/point.dart';
import '../mixins/marker.dart';

class CustomMap extends GetxController with Point, Markers {
  @override
  void onInit() {
    super.onInit();
    setMarkerBitmap();
  }

  /// 地图初始化
  void onMapCreated(GoogleMapController googleMapController) {
    addMarker(
      position: mapCenter,
    );
    update();
  }
}
