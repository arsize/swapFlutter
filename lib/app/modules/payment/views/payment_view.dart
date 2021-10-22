import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pay/pay.dart';
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
                  controller.money,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "选择支付方式",
                    style: TextStyle(
                      fontSize: 28.f,
                      color: Colours.app_normal_grey,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 32.h, bottom: 32.h),
                    width: 622.w,
                    height: 1.w,
                    color: Colours.app_F1_grey,
                  ),
                  InkWell(
                    onTap: () {
                      controller.selectPayment("enets");
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image(
                              width: 72.w,
                              height: 72.w,
                              image: AssetImage("images/pay_nets.png"),
                            ),
                            SizedBox(width: 36.w),
                            Text(
                              "eNets",
                              style: TextStyle(
                                fontSize: 30.f,
                                color: Colours.app_main,
                              ),
                            )
                          ],
                        ),
                        GetBuilder<PaymentController>(
                          builder: (_) {
                            return _.selectPay == 'enets'
                                ? Image(
                                    width: 38.w,
                                    height: 38.w,
                                    image: AssetImage(
                                      "images/check_yes.png",
                                    ),
                                  )
                                : Image(
                                    width: 38.w,
                                    height: 38.w,
                                    image: AssetImage(
                                      "images/check_none.png",
                                    ),
                                  );
                          },
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 32.h, bottom: 32.h),
                    width: 622.w,
                    height: 1.w,
                    color: Colours.app_F1_grey,
                  ),
                  InkWell(
                    onTap: () {
                      controller.selectPayment("apple");
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image(
                              width: 72.w,
                              height: 72.w,
                              image: AssetImage("images/apple_pay.png"),
                            ),
                            SizedBox(width: 36.w),
                            Text(
                              "Apple Pay",
                              style: TextStyle(
                                fontSize: 30.f,
                                color: Colours.app_main,
                              ),
                            )
                          ],
                        ),
                        GetBuilder<PaymentController>(
                          builder: (_) {
                            return _.selectPay == 'apple'
                                ? Image(
                                    width: 38.w,
                                    height: 38.w,
                                    image: AssetImage(
                                      "images/check_yes.png",
                                    ),
                                  )
                                : Image(
                                    width: 38.w,
                                    height: 38.w,
                                    image: AssetImage(
                                      "images/check_none.png",
                                    ),
                                  );
                          },
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 32.h,
            child: arBtn(fn: () {}, text: "确认支付"),
          )
        ],
      ),
    );
  }
}
