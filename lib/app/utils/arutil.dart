/*
 * @Author: Arsize 
 * @Date: 2021-07-23 16:51:20 
 * @Describe:提供一些常见的widget简化操作 
 */

import 'package:flutter/cupertino.dart';

import 'adapt.dart';

class ArUtil {
  /// 常用的border radius设置
  static BorderRadiusGeometry border(index) {
    return BorderRadius.all(Radius.circular(Adapt.width(index.toDouble())));
  }
}
