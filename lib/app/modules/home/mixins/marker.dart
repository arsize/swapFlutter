/*
 * @Author: Arsize 
 * @Date: 2021-10-08 11:24:26 
 * @Describe: 处理地图marker渲染
 */
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:raintree/app/common/methods/check_pixel_ratio.dart';

mixin Markers {
  Set<Marker> markers = {};
  Map<String, BitmapDescriptor> markerIcons = {};

  void addMarker({markerId, position, icon}) {
    markers.add(
      Marker(
        markerId: MarkerId(markerId),
        position: position,
        icon: icon,
      ),
    );
  }

  // TODO:MARKERS 渲染
  setMarkersBitmap() async {
    List.filled(13, '').asMap().entries.map((e) async {
      var _path =
          "images/map_markers/${checkRatio()}/map_marker_${e.key < 10 ? '0' + e.key.toString() : e.key}.png";
      print(_path);
      markerIcons[e.key.toString()] =
          await BitmapDescriptor.fromAssetImage(ImageConfiguration(), _path);
    }).toList();
  }
}
