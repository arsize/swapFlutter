import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:raintree/app/colors/colors.dart';
import 'package:raintree/app/common/widgets/common_wigets.dart';
import 'package:raintree/app/utils/utils.dart';
import '../controllers/payment_controller.dart';

class PaymentView extends GetView<PaymentController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(title: "确认充值"),
      body: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 60.h,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "￥",
                  style: TextStyle(
                    fontSize: 36.f,
                    color: Colours.app_main,
                  ),
                ),
                Text(
                  "69.00",
                  style: TextStyle(
                    fontSize: 60.f,
                    color: Colours.app_main,
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 154.h,
            child: Text(
              "余额充值",
              style: TextStyle(
                fontSize: 28.f,
                color: Colours.app_font_grey6,
              ),
            ),
          ),
          Positioned(
            top: 254.h,
            child: Container(
              width: 686.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: ArUtil.border(10),
              ),
              padding: EdgeInsets.all(32.w),
              child: Column(
                children: [],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
