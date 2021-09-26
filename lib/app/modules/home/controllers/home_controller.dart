import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swapapp/app/store/store.dart';
import 'package:swapapp/app/utils/storage.dart';
import 'package:swapapp/config.dart';
import 'package:swapapp/main.dart';

class HomeController extends GetxController {
  StoreController store = Get.find();
  // 响应式变量

  // 普通变量
  String selectMenu = "换电";
  final LayerLink layerLink = LayerLink();

  @override
  void onInit() {
    super.onInit();
    print("home init");
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
