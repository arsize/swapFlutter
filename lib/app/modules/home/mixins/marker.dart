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
  late BitmapDescriptor markerIcon;

  void addMarker({markerId, position, icon}) {
    markers.add(
      Marker(
        markerId: MarkerId("id_1"),
        position: position,
        icon: markerIcon,
      ),
    );
  }

  Future setMarkerBitmap() async {
    var _imgPath = "images/map_markers/${checkRatio()}/map_marker_01.png";
    markerIcon =
        await BitmapDescriptor.fromAssetImage(ImageConfiguration(), _imgPath);
  }
}
