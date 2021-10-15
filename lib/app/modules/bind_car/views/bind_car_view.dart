import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:raintree/app/colors/colors.dart';
import 'package:raintree/app/common/widgets/app_bar.dart';
import 'package:raintree/app/common/widgets/button.dart';
import 'package:raintree/app/utils/utils.dart';

import '../controllers/bind_car_controller.dart';

class BindCarView extends GetView<BindCarController> {
  final bindCar = Get.find<BindCarController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(title: "绑定车辆"),
      body: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: Get.height - 140.h),
        child: Column(
          children: [
            Container(
              height: 180.h,
              padding: EdgeInsets.only(
                top: 32.w,
                bottom: 32.w,
                left: 120.w,
                right: 120.w,
              ),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Image(
                        width: 64.w,
                        height: 64.w,
                        image: AssetImage(
                          "images/bind_right_round.png",
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        "完善账号信息",
                        style: TextStyle(
                          fontSize: 24.f,
                          color: Colours.app_main,
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
            SizedBox(height: 24.h),
            Container(
              width: Get.width,
              color: Colors.white,
              padding: EdgeInsets.all(34.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "请录入车辆编码",
                    style: TextStyle(
                      fontSize: 34.f,
                      color: Colours.app_main,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 24.h),
                  TextField(
                    controller: controller.carNumController,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(
                        top: 5.w,
                        bottom: 5.w,
                        left: 30.w,
                        right: 30.w,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide(color: Colours.app_DB_grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide(color: Colours.app_DB_grey),
                      ),
                      hintText: "请输入车辆编码",
                      hintStyle: TextStyle(
                        fontSize: 30.f,
                        color: Colours.app_normal_grey,
                      ),
                    ),
                    onChanged: (String text) {
                      controller.inputOnchange(text);
                    },
                  ),
                  SizedBox(height: 32.h),
                  Offstage(
                    offstage: controller.numberPlate.value == '',
                    child: Container(
                      width: 686.w,
                      padding:
                          EdgeInsets.only(top: 40.h, left: 32.w, right: 32.w),
                      color: Colours.app_F7A_grey,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 225.w,
                                child: Text(
                                  "车架号：",
                                  style: TextStyle(
                                    fontSize: 28.f,
                                    color: Colours.app_font_grey,
                                  ),
                                ),
                              ),
                              Text(
                                "RDGF34233657",
                                style: TextStyle(
                                  fontSize: 28.f,
                                  color: Colours.app_main,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 16.h),
                          Row(
                            children: [
                              Container(
                                width: 225.w,
                                child: Text(
                                  "陆管局锁头编码：",
                                  style: TextStyle(
                                    fontSize: 28.f,
                                    color: Colours.app_font_grey,
                                  ),
                                ),
                              ),
                              Text(
                                "A000001",
                                style: TextStyle(
                                  fontSize: 28.f,
                                  color: Colours.app_main,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 16.h),
                          Row(
                            children: [
                              Container(
                                width: 225.w,
                                child: Text(
                                  "车牌号：",
                                  style: TextStyle(
                                    fontSize: 28.f,
                                    color: Colours.app_font_grey,
                                  ),
                                ),
                              ),
                              Text(
                                "222",
                                style: TextStyle(
                                  fontSize: 28.f,
                                  color: Colours.app_main,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 16.h),
                          Row(
                            children: [
                              Container(
                                width: 225.w,
                                child: Text(
                                  "电池型号：",
                                  style: TextStyle(
                                    fontSize: 28.f,
                                    color: Colours.app_font_grey,
                                  ),
                                ),
                              ),
                              Text(
                                "48V12AH",
                                style: TextStyle(
                                  fontSize: 28.f,
                                  color: Colours.app_main,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 16.h),
                          Row(
                            children: [
                              Container(
                                width: 225.w,
                                child: Text(
                                  "电池SN码：",
                                  style: TextStyle(
                                    fontSize: 28.f,
                                    color: Colours.app_font_grey,
                                  ),
                                ),
                              ),
                              Text(
                                "BT66768877HN778766889",
                                style: TextStyle(
                                  fontSize: 28.f,
                                  color: Colours.app_main,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 16.h),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                width: Get.width,
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 32.h),
              child: arBtn(
                width: 686,
                height: 100,
                text: "确认绑定",
                fn: () {
                  controller.submitTo();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
