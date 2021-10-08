/*
 * @Author: Arsize 
 * @Date: 2021-09-29 15:09:42 
 * @Describe: 催建电柜
 */
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:raintree/app/colors/colors.dart';
import 'package:raintree/app/common/widgets/app_bar.dart';
import 'package:raintree/app/common/widgets/button.dart';
import 'package:raintree/app/utils/utils.dart';

import '../controllers/urge_cabinets_controller.dart';

class UrgeCabinetsView extends GetView<UrgeCabinetsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(title: "催建电柜"),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              child: Image(
                width: Get.width,
                image: AssetImage("images/urge_cabinets_bg.png"),
              ),
            ),
          ),
          Positioned(
            top: 40.h,
            left: 40.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "充换电柜地址征集",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32.f,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  "你最需要充换电柜安置在哪？告诉我们",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.f,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 355.h,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(35.w),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "希望安装地址",
                    style: TextStyle(
                      color: Colours.app_main,
                      fontSize: 30.f,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "请选择",
                        style: TextStyle(
                          color: Colours.app_normal_grey,
                          fontSize: 30.f,
                        ),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: Colours.app_FC_grey,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 32.h,
            left: 32.w,
            child: arBtn(
              fn: () {},
              width: 686,
              text: "提交",
            ),
          )
        ],
      ),
    );
  }
}
