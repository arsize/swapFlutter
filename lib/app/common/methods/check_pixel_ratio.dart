/*
 * @Author: Arsize 
 * @Date: 2021-09-30 14:56:22 
 * @Describe: 判断pixel_ratio
 */

import 'package:flutter/material.dart';
import 'package:get/get.dart';

String checkRatio() {
  var ratio = MediaQuery.of(Get.context!).devicePixelRatio;
  if (ratio < 1.5) {
    return "mdpi";
  } else if (ratio >= 1.5 && ratio < 2) {
    return "hdpi";
  } else if (ratio >= 2 && ratio < 3) {
    return "xhdpi";
  } else {
    return "xxhdpi";
  }
}
