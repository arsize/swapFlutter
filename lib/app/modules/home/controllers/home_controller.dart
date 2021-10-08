import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:raintree/app/modules/home/apis/round_list.dart';
import 'package:raintree/app/store/store.dart';

import 'custom_map.dart';

class HomeController extends GetxController {
  final store = Get.find<StoreController>();
  final map = Get.find<CustomMap>();
  // 响应式变量

  // 普通变量
  String selectMenu = "换电";
  final LayerLink layerLink = LayerLink();

  @override
  void onInit() {
    super.onInit();
    print("home 初始化");
    getCabinets();
  }

//---------------------------------------------------------------
  changeMenu(str) {
    selectMenu = str;
    update();
  }

// --------------------------机柜相关------------------------------------
  void getCabinets() {
    roundList();
  }
}
