import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:raintree/app/colors/colors.dart';
import 'package:raintree/app/common/widgets/app_bar.dart';
import 'package:raintree/app/common/widgets/button.dart';
import 'package:raintree/app/utils/utils.dart';

import '../controllers/pay_order_controller.dart';

class PayOrderView extends GetView<PayOrderController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(title: "支付订单"),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 60.h,
            child: Container(
              width: Get.width,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "￥",
                        style: TextStyle(
                          fontSize: 36.f,
                          color: Colours.app_main,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "69.00",
                        style: TextStyle(
                          fontSize: 64.f,
                          fontWeight: FontWeight.w600,
                          color: Colours.app_main,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    "购买商品",
                    style: TextStyle(
                      fontSize: 28.f,
                      color: Colours.app_font_grey6,
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 254.h,
            left: 32.w,
            right: 32.w,
            child: Container(
              padding: EdgeInsets.all(32.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: ArUtil.border(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "选择支付方式",
                    style: TextStyle(
                      fontSize: 28.f,
                      color: Colours.app_normal_grey,
                    ),
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  Container(
                    width: 618.w,
                    height: 1.w,
                    color: Colours.app_E1_grey,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 51.h,
                          bottom: 51.h,
                        ),
                        child: Row(
                          children: [
                            Image(
                              width: 72.w,
                              height: 72.w,
                              image: AssetImage("images/pay_nets.png"),
                            ),
                            SizedBox(width: 36.w),
                            Text(
                              "Nets",
                              style: TextStyle(
                                fontSize: 30.f,
                                color: Colours.app_font_grey6,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 32.h,
            left: 32.w,
            right: 32.w,
            child: arBtn(
              fn: () {
                Get.offNamed("/pay-order-success");
              },
              height: 100,
              text: "确认支付",
            ),
          )
        ],
      ),
    );
  }
}
