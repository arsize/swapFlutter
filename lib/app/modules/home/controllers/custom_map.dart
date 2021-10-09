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
    setMarkersBitmap();
  }

  /// 地图初始化
  void onMapCreated(GoogleMapController googleMapController) {
    print("拿到了所有的markers");
    print(markerIcons);
    markerIcons.forEach((key, value) {
      print(value);
      addMarker(
        markerId: key,
        icon: value,
        position: mapCenter,
      );
    });
    update();
  }
}
