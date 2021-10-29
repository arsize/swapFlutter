import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:raintree/app/common/widgets/app_bar.dart';

import '../controllers/admin_battery_detail_controller.dart';

class AdminBatteryDetailView extends GetView<AdminBatteryDetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(title: "电池详情"),
      body: Center(
        child: Text(
          'AdminBatteryDetailView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
