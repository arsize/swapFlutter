import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RecordsController extends GetxController {
  // 控制器
  late TabController _controller;
  List tabs = ["充值", "消费"];
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {}
}
