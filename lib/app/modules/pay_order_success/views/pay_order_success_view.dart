import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:raintree/app/common/widgets/app_bar.dart';

import '../controllers/pay_order_success_controller.dart';

class PayOrderSuccessView extends GetView<PayOrderSuccessController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(title: "订单支付成功"),
      body: Center(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
