/*
 * @Author: Arsize 
 * @Date: 2021-10-08 10:43:01 
 * @Describe: 地图定位
 */

import 'package:location/location.dart';

mixin Point {
  late bool _serviceEnabled;
  late PermissionStatus _permissionGranted;
  final Location location = Location();

  /// 判断是否有定位权限
  Future<bool> checkPermission() async {
    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return false;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return false;
      }
    }

    return true;
  }

  /// 获取当前定位
  Future getNowPoint() async {
    bool value = await checkPermission();
    if (value) {
      return await location.getLocation();
    }
  }
}
