import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:raintree/app/common/widgets/app_bar.dart';

import '../controllers/submit_order_controller.dart';

class SubmitOrderView extends GetView<SubmitOrderController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(title: "提交订单"),
      body: Center(
        child: Text(
          'SubmitOrderView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
