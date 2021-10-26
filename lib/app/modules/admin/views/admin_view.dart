import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:raintree/app/colors/colors.dart';
import 'package:raintree/app/common/widgets/app_bar.dart';
import 'package:raintree/app/utils/utils.dart';

import '../controllers/admin_controller.dart';

class AdminView extends GetView<AdminController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(title: "运营助手", elevation: 0),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              color: Colours.app_main,
              width: Get.width,
              height: 295.h,
            ),
          ),
          Positioned(
            top: 82.h,
            left: 32.w,
            child: Image(
              width: 347.w,
              height: 47.h,
              image: AssetImage("images/home_logo_white.png"),
            ),
          ),
          Positioned(
            top: 230.h,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.only(top: 70.h, left: 47.w, right: 47.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.w),
                  topRight: Radius.circular(25.w),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Get.toNamed("/admin-cabinet-list");
                    },
                    child: Column(
                      children: [
                        Image(
                          width: 106.w,
                          height: 106.w,
                          image: AssetImage(
                            "images/admin_icon01.png",
                          ),
                        ),
                        Text(
                          "电柜管理",
                          style: TextStyle(
                            fontSize: 30.f,
                            color: Colours.app_font_grey6,
                          ),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed("/anomalies-alarm");
                    },
                    child: Column(
                      children: [
                        Image(
                          width: 106.w,
                          height: 106.w,
                          image: AssetImage(
                            "images/admin_icon02.png",
                          ),
                        ),
                        Text(
                          "异常告警",
                          style: TextStyle(
                            fontSize: 30.f,
                            color: Colours.app_font_grey6,
                          ),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed("/admin-bind-combo");
                    },
                    child: Column(
                      children: [
                        Image(
                          width: 106.w,
                          height: 106.w,
                          image: AssetImage(
                            "images/admin_icon03.png",
                          ),
                        ),
                        Text(
                          "绑定套餐",
                          style: TextStyle(
                            fontSize: 30.f,
                            color: Colours.app_font_grey6,
                          ),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed("/admin-unbind-battery");
                    },
                    child: Column(
                      children: [
                        Image(
                          width: 106.w,
                          height: 106.w,
                          image: AssetImage(
                            "images/admin_icon04.png",
                          ),
                        ),
                        Text(
                          "解绑电池",
                          style: TextStyle(
                            fontSize: 30.f,
                            color: Colours.app_font_grey6,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
