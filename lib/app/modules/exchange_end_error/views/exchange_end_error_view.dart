import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:raintree/app/colors/colors.dart';
import 'package:raintree/app/common/widgets/app_bar.dart';
import 'package:raintree/app/common/widgets/button.dart';
import 'package:raintree/app/utils/utils.dart';
import 'package:url_launcher/url_launcher.dart';
import '../controllers/exchange_end_error_controller.dart';

class ExchangeEndErrorView extends GetView<ExchangeEndErrorController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(title: "服务终止", background: Colors.white),
      body: Stack(
        alignment: Alignment.center,
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 80.h,
            child: Image(
              width: 160.w,
              height: 160.w,
              image: AssetImage("images/exchange_error.png"),
            ),
          ),
          Positioned(
            top: 300.h,
            child: Text(
              controller.err,
              style: TextStyle(
                fontSize: 32.f,
                fontWeight: FontWeight.w600,
                color: Colours.app_main,
              ),
            ),
          ),
          Positioned(
            top: 360.h,
            child: Text(
              "如需帮助，请联系客服",
              style: TextStyle(
                fontSize: 28.f,
                color: Colours.app_normal_grey,
              ),
            ),
          ),
          Positioned(
            bottom: 164.h,
            child: arBtn(
              fn: () {
                launch("tel://xxx");
              },
              width: 686,
              height: 100,
              text: "拨打客服电话",
            ),
          ),
          Positioned(
            bottom: 32.h,
            child: arBtn(
              fn: () {
                Get.back();
              },
              width: 686,
              height: 100,
              backgroundColor: Colours.app_light_grey,
              textColor: Colours.app_main,
              text: "返回首页",
            ),
          )
        ],
      ),
    );
  }
}
