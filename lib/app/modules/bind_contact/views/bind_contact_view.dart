import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'package:get/get.dart';
import 'package:raintree/app/colors/colors.dart';
import 'package:raintree/app/common/widgets/app_bar.dart';
import 'package:raintree/app/common/widgets/button.dart';
import 'package:raintree/app/utils/utils.dart';

import '../controllers/bind_contact_controller.dart';

class BindContactView extends GetView<BindContactController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(title: "绑定车辆"),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.only(
                top: 32.w,
                bottom: 32.w,
                left: 120.w,
                right: 120.w,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Image(
                        width: 64.w,
                        height: 64.w,
                        image: AssetImage(
                          "images/bind_none_round.png",
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        "完善账号信息",
                        style: TextStyle(
                          fontSize: 24.f,
                          color: Colours.app_normal_grey,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 10.w,
                        height: 2.h,
                        color: Colours.app_light_grey,
                      ),
                      SizedBox(width: 5.w),
                      Container(
                        width: 10.w,
                        height: 2.h,
                        color: Colours.app_light_grey,
                      ),
                      Container(
                        width: 10.w,
                        height: 2.h,
                        color: Colours.app_light_grey,
                      ),
                      SizedBox(width: 5.w),
                      Container(
                        width: 10.w,
                        height: 2.h,
                        color: Colours.app_light_grey,
                      ),
                      Container(
                        width: 10.w,
                        height: 2.h,
                        color: Colours.app_light_grey,
                      ),
                      SizedBox(width: 5.w),
                      Container(
                        width: 10.w,
                        height: 2.h,
                        color: Colours.app_light_grey,
                      ),
                      SizedBox(width: 5.w),
                      Container(
                        width: 10.w,
                        height: 2.h,
                        color: Colours.app_light_grey,
                      ),
                      SizedBox(width: 5.w),
                      Container(
                        width: 10.w,
                        height: 2.h,
                        color: Colours.app_light_grey,
                      ),
                      SizedBox(width: 5.w),
                      Container(
                        width: 10.w,
                        height: 2.h,
                        color: Colours.app_light_grey,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image(
                        width: 64.w,
                        height: 64.w,
                        image: AssetImage(
                          "images/bind_none_round.png",
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        "绑定车辆",
                        style: TextStyle(
                          fontSize: 24.f,
                          color: Colours.app_normal_grey,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 190.h,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.all(32.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "紧急联系人",
                    style: TextStyle(
                      fontSize: 30.f,
                      fontWeight: FontWeight.w700,
                      color: Colours.app_main,
                    ),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colours.app_light_grey,
                          width: 2.w,
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),
                    width: 690.w,
                    height: 112.w,
                    child: Container(
                      child: Row(
                        children: [
                          Text(
                            "姓名",
                            style: TextStyle(
                              fontSize: 30.f,
                              fontWeight: FontWeight.w600,
                              color: Colours.app_main,
                            ),
                          ),
                          SizedBox(
                            width: 130.w,
                          ),
                          Expanded(
                            flex: 2,
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: "请输入姓名",
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                  fontSize: 30.f,
                                  color: Colours.app_normal_grey,
                                ),
                              ),
                              onChanged: (String text) {},
                            ),
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colours.app_light_grey,
                          width: 2.w,
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),
                    width: 690.w,
                    height: 112.w,
                    child: Container(
                      child: Row(
                        children: [
                          Text(
                            "手机号码",
                            style: TextStyle(
                              fontSize: 30.f,
                              fontWeight: FontWeight.w600,
                              color: Colours.app_main,
                            ),
                          ),
                          SizedBox(
                            width: 70.w,
                          ),
                          Expanded(
                            flex: 2,
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: "请输入手机号码",
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                  fontSize: 30.f,
                                  color: Colours.app_normal_grey,
                                ),
                              ),
                              onChanged: (String text) {},
                            ),
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  Text(
                    "温馨提示：为防止意外事故发生，请填写紧急联系人信息。",
                    style: TextStyle(
                      fontSize: 24.f,
                      color: Colours.app_normal_grey,
                    ),
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
                Get.offNamed("/bind-success");
              },
              text: "下一步",
            ),
          ),
        ],
      ),
    );
  }
}
