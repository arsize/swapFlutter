/*
 * @Author: Arsize 
 * @Date: 2021-09-28 09:27:57 
 * @Describe: 我的套餐
 */
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/my_package_controller.dart';

class MyPackageView extends GetView<MyPackageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyPackageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'MyPackageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
