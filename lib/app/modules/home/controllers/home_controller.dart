import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swapapp/app/utils/utils.dart';
import 'package:swapapp/config.dart';

class HomeController extends GetxController {
  // 响应式变量

  // 普通变量
  String selectMenu = "换电";
  final LayerLink layerLink = LayerLink();

  @override
  void onInit() {
    super.onInit();
    print("触发了home 控制器");
  }

  changeMenu(str) {
    selectMenu = str;
    update();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  @override
  void dispose() {
    super.dispose();
  }
}
