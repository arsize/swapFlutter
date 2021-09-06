/*
 * @Author: Arsize 
 * @Date: 2021-09-06 16:04:58 
 * @Describe: 商城
 */
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:swapapp/app/common/widgets/app_bar.dart';

import '../controllers/shop_controller.dart';

class ShopView extends GetView<ShopController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(title: "商城"),
      body: Center(
        child: Text(
          'ShopView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
