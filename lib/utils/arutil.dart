/*
 * @Author: Arsize 
 * @Date: 2021-07-23 16:51:20 
 * @Describe:功能类，提供一些常见的简化操作 
 */

import 'package:flutter/cupertino.dart';
import 'package:swapapp/utils/adapt.dart';

class ArUtil {
  static ArUtil? _instence;

  static getInstance() {
    if (_instence == null) _instence = ArUtil();
    return _instence;
  }

  // border normal
  static BorderRadiusGeometry border(index) {
    return BorderRadius.all(Radius.circular(Adapt.width(index.toDouble())));
  }
}
