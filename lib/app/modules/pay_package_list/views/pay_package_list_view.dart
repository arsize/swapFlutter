import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:raintree/app/common/widgets/app_bar.dart';

import '../controllers/pay_package_list_controller.dart';

class PayPackageListView extends GetView<PayPackageListController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(title: "购买套餐"),
      body: Center(
        child: Text(
          'PayPackageListView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
