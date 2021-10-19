/*
 * @Author: Arsize 
 * @Date: 2021-09-29 15:30:03 
 * @Describe: 修改手机号
 */
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:raintree/app/colors/colors.dart';
import 'package:raintree/app/common/widgets/common_wigets.dart';
import 'package:raintree/app/store/store.dart';
import 'package:raintree/app/utils/utils.dart';
import '../controllers/edit_mobile_controller.dart';

class EditMobileView extends GetView<EditMobileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(title: "修改手机号"),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(32.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "当前手机号：",
                  style: TextStyle(
                    fontSize: 28.f,
                    color: Colours.app_font_grey6,
                  ),
                ),
                GetBuilder<StoreController>(builder: (_) {
                  return Text(
                    _.loginData.account ?? '--',
                    style: TextStyle(
                      fontSize: 28.f,
                      color: Colours.app_font_grey6,
                    ),
                  );
                })
              ],
            ),
            SizedBox(
              height: 32.h,
            ),
            SizedBox(
              width: Get.width,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "请输入新手机号",
                  hintStyle: TextStyle(
                    color: Colours.app_icon_right,
                    fontSize: 30.f,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            Container(
              height: 1,
              color: Colours.app_light_grey,
            ),
            SizedBox(
              width: Get.width,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "请输入验证码",
                  hintStyle: TextStyle(
                    color: Colours.app_icon_right,
                    fontSize: 30.f,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            Container(
              height: 1,
              color: Colours.app_light_grey,
            ),
            SizedBox(
              height: 80.h,
            ),
            Container(
              child: arBtn(
                fn: () {},
                text: "确定",
                width: 686,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
