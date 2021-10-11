import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:raintree/app/common/widgets/app_bar.dart';

import '../controllers/order_detail_controller.dart';

class OrderDetailView extends GetView<OrderDetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(title: "订单详情"),
      body: Center(
        child: Text(
          '等待开发',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
