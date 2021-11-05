/*
 * @Author: Arsize 
 * @Date: 2021-09-29 09:35:36 
 * @Describe: 订单信息 换电完成
 */
library exchange_finish_view;

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:raintree/app/colors/colors.dart';
import 'package:raintree/app/common/widgets/common_wigets.dart';
import 'package:raintree/app/utils/utils.dart';

import '../controllers/exchange_finish_controller.dart';

part './widgets/finish_panel.dart';
part './widgets/finish_panel_line.dart';
part './widgets/order_info_item.dart';

class ExchangeFinishView extends GetView<ExchangeFinishController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(title: "订单信息", elevation: 0),
      body: Container(
        child: Stack(
          alignment: Alignment.center,
          fit: StackFit.expand,
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Image(
                width: Get.width,
                image: AssetImage("images/finish_panel_img.png"),
              ),
            ),
            Positioned(
              top: 243.h,
              left: 32.w,
              child: FinishPanel(),
            ),
            Positioned(
              bottom: 156.h,
              child: Text(
                "对订单有疑问？",
                style: TextStyle(
                  color: Colours.app_green,
                  fontSize: 28.f,
                ),
              ),
            ),
            Positioned(
              bottom: 32.h,
              child: InkWell(
                onTap: () {
                  Get.offAllNamed("/home");
                },
                child: Container(
                  width: 686.w,
                  height: 100.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: ArUtil.border(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colours.app_E1_grey,
                        offset: Offset(0.0, 3.0),
                        blurRadius: 5,
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "返回首页",
                    style: TextStyle(
                      color: Colours.app_main,
                      fontSize: 32.f,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
