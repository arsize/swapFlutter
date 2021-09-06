import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:swapapp/app/colors/colors.dart';
import 'package:swapapp/app/modules/about_us/views/widgets/app_info_item.dart';
import 'package:swapapp/app/utils/utils.dart';
import 'package:swapapp/app/common/widgets/common_wigets.dart';

import '../controllers/about_us_controller.dart';

class AboutUsView extends GetView<AboutUsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(
        title: "关于我们",
      ),
      body: Stack(
        children: [
          Positioned(
            top: 84.h,
            left: 300.w,
            child: Column(
              children: [
                Image(
                  image: AssetImage("images/app_info_logo.png"),
                  width: 152.w,
                  height: 152.w,
                ),
                SizedBox(
                  height: 30.h,
                ),
                Text(
                  "V1.5.5",
                  style: TextStyle(
                    fontSize: 28.f,
                    color: Colours.app_main,
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 400.h,
            left: 0,
            right: 0,
            child: Container(
              child: Column(
                children: [
                  AppInfoItem(
                      value: "https://www.smartchuxing.com", lable: "官方网站"),
                  AppInfoItem(value: "400-660-2839", lable: "联系电话"),
                  AppInfoItem(value: "business@wondware.com", lable: "电子邮箱"),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 37.h,
            child: Text(
              "深圳市骑换科技有限公司",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24.f,
                color: Colours.app_normal_grey,
              ),
            ),
          )
        ],
      ),
    );
  }
}
