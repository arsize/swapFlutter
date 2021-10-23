import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShopOrderListController extends GetxController {
  // 控制器
  List tabs = ["全部", "待付款", "待发货", "待收货"];
  late ScrollController allController = ScrollController();
  late ScrollController pendingController = ScrollController();
  late ScrollController dispatchedController = ScrollController();
  late ScrollController shippedController = ScrollController();

  List<int> allOrderList = [1, 2, 3, 4, 5, 6, 7, 8];
  @override
  void onInit() {
    allController = ScrollController();
    pendingController = ScrollController();
    dispatchedController = ScrollController();
    shippedController = ScrollController();
    super.onInit();
  }

  @override
  void dispose() {
    allController.dispose();
    pendingController.dispose();
    dispatchedController.dispose();
    shippedController.dispose();
    super.dispose();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
