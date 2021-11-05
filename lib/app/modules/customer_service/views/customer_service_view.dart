/*
 * @Author: Arsize 
 * @Date: 2021-09-29 11:45:40 
 * @Describe: 客服中心
 */
library customer_service_view;

import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import 'package:get/get.dart';
import 'package:raintree/app/colors/colors.dart';
import 'package:raintree/app/utils/utils.dart';
import 'package:raintree/app/common/widgets/common_wigets.dart';
import 'package:url_launcher/url_launcher.dart';

import '../controllers/customer_service_controller.dart';

part './widgets/common_problem.dart';
part './widgets/problem_item.dart';

class CustomerServiceView extends GetView<CustomerServiceController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(title: "客服中心"),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(top: 32.h, bottom: 32.h),
              color: Colors.white,
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Get.toNamed("/feedback");
                      },
                      child: Column(
                        children: [
                          Image(
                            width: 80.w,
                            height: 80.w,
                            image: AssetImage("images/kf_suggest.png"),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            "意见反馈",
                            style: TextStyle(
                              color: Colours.app_main,
                              fontSize: 24.f,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Get.toNamed("/urge-cabinets");
                      },
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage("images/kf_cabinet.png"),
                            width: 80.w,
                            height: 80.w,
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            "催建电柜",
                            style: TextStyle(
                              color: Colours.app_main,
                              fontSize: 24.f,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 215.h,
            left: 32.w,
            child: Container(
              padding: EdgeInsets.all(20.w),
              decoration: BoxDecoration(
                borderRadius: ArUtil.border(16),
                color: Colors.white,
              ),
              child: Text(
                "Hi~，你是遇到以下问题了吗？",
                style: TextStyle(
                  color: Colours.app_main,
                  fontSize: 28.f,
                ),
              ),
            ),
          ),
          Positioned(
            top: 330.h,
            left: 32.w,
            child: CommonProblem(),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(
                top: 19.h,
                bottom: 19.h,
                left: 32.w,
                right: 32.w,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "工作时间：",
                        style: TextStyle(
                          fontSize: 24.f,
                          color: Colours.app_font_grey6,
                        ),
                      ),
                      Text(
                        "工作日09:00-12:00 14:00-18:00",
                        style: TextStyle(
                          fontSize: 24.f,
                          color: Colours.app_font_grey6,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 39.w,
                  ),
                  Expanded(
                    child: arBtn(
                      fn: () {
                        arDialog(
                          context: Get.context,
                          content: "确定要拨打客服电话吗？",
                          fn1: () {
                            Get.back();
                          },
                          fn1Text: "取消",
                          fn2: () {
                            Get.back();
                            launch("tel://xxx");
                          },
                          fn2Text: "确定",
                        );
                      },
                      text: "拨打客服电话",
                      width: 296,
                      height: 80,
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
