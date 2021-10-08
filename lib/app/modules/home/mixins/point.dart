/*
 * @Author: Arsize 
 * @Date: 2021-10-08 10:43:01 
 * @Describe: 地图定位
 */

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

mixin Point {
  final Location _location = Location();

  late bool _serviceEnabled;
  late PermissionStatus _permissionGranted;

  late LatLng mapCenter = LatLng(22.582657328817298, 113.86058293363483);

  /// 判断是否有定位权限
  Future<bool> checkPermission() async {
    _serviceEnabled = await _location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await _location.requestService();
      if (!_serviceEnabled) {
        return false;
      }
    }

    _permissionGranted = await _location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await _location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return false;
      }
    }

    return true;
  }

  /// 获取当前定位
  Future getPoint() async {
    bool value = await checkPermission();
    if (value) {
      return await _location.getLocation();
    }
  }
}
