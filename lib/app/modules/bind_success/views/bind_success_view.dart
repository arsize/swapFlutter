import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:raintree/app/colors/colors.dart';
import 'package:raintree/app/common/widgets/app_bar.dart';
import 'package:raintree/app/common/widgets/button.dart';
import 'package:raintree/app/utils/utils.dart';

import '../controllers/bind_success_controller.dart';

class BindSuccessView extends GetView<BindSuccessController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(title: "绑定成功"),
      body: Stack(
        alignment: Alignment.center,
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 140.h,
            child: Column(
              children: [
                Image(
                  width: 160.w,
                  height: 160.w,
                  image: AssetImage("images/success_icon.png"),
                ),
                SizedBox(height: 56.h),
                Text(
                  "绑定成功",
                  style: TextStyle(
                    fontSize: 32.f,
                    color: Colours.app_main,
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 32.h,
            child: arBtn(
              fn: () {
                Get.offNamed("/vehicle");
              },
              text: "查看我的车辆",
              width: 686,
              height: 100,
            ),
          )
        ],
      ),
    );
  }
}
