/*
 * @Author: Arsize 
 * @Date: 2021-10-08 11:24:26 
 * @Describe: 处理地图marker渲染
 */
import 'dart:typed_data';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:raintree/app/common/methods/normal.dart';

mixin Markers {
  Set<Marker> markers = {};
  Map<String, BitmapDescriptor> markerBts = {};

  Future setMarkersBitmap() async {
    String _path;
    Uint8List _value;
    for (var i = 0; i < 13; i++) {
      _path = "images/map_marker_${i < 10 ? '0' + i.toString() : i}.png";
      _value = await getBytesFromAsset(_path, 120);
      markerBts[i.toString()] = BitmapDescriptor.fromBytes(_value);
    }
    // 断电/离线ICON
    markerBts['failure'] = BitmapDescriptor.fromBytes(
        await getBytesFromAsset("images/map_marker_poweroff.png", 120));
    // 中心位置
    markerBts['location'] = BitmapDescriptor.fromBytes(
        await getBytesFromAsset("images/my_location.png", 50));
  }
}
