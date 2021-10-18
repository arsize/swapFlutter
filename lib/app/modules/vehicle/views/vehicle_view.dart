/*
 * @Author: Arsize 
 * @Date: 2021-09-28 18:39:29 
 * @Describe: 我的车辆
 */
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:raintree/app/colors/colors.dart';
import 'package:raintree/app/common/widgets/app_bar.dart';
import 'package:raintree/app/utils/utils.dart';

import '../controllers/vehicle_controller.dart';

class VehicleView extends GetView<VehicleController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(title: "我的车辆", elevation: 0),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 508.h,
              decoration: BoxDecoration(
                color: Colours.app_main,
              ),
            ),
          ),
          Positioned(
            top: 340.h,
            left: 32.w,
            child: Container(
              width: 686.w,
              padding: EdgeInsets.all(33.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: ArUtil.border(16),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "车架号：",
                        style: TextStyle(
                          color: Colours.app_normal_grey,
                          fontSize: 28.f,
                        ),
                      ),
                      Obx(
                        () => Text(
                          controller.myCarModel().data?.vehicleSn ?? '--',
                          style: TextStyle(
                            color: Colours.app_main,
                            fontSize: 28.f,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "陆管局锁头编码：",
                        style: TextStyle(
                          color: Colours.app_normal_grey,
                          fontSize: 28.f,
                        ),
                      ),
                      Obx(
                        () => Text(
                          controller.myCarModel().data?.lockCode ?? '--',
                          style: TextStyle(
                            color: Colours.app_main,
                            fontSize: 28.f,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "车牌号：",
                        style: TextStyle(
                          color: Colours.app_normal_grey,
                          fontSize: 28.f,
                        ),
                      ),
                      Obx(
                        () => Text(
                          controller.myCarModel().data?.numberPlate ?? '--',
                          style: TextStyle(
                            color: Colours.app_main,
                            fontSize: 28.f,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "电池SN码：",
                        style: TextStyle(
                          color: Colours.app_normal_grey,
                          fontSize: 28.f,
                        ),
                      ),
                      Obx(
                        () => Text(
                          controller.myCarModel().data?.batterySn ?? '--',
                          style: TextStyle(
                            color: Colours.app_main,
                            fontSize: 28.f,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "电池型号：",
                        style: TextStyle(
                          color: Colours.app_normal_grey,
                          fontSize: 28.f,
                        ),
                      ),
                      Obx(
                        () => Text(
                          controller.myCarModel().data?.batteryTypeName ?? '--',
                          style: TextStyle(
                            color: Colours.app_main,
                            fontSize: 28.f,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "电压/容量：",
                        style: TextStyle(
                          color: Colours.app_normal_grey,
                          fontSize: 28.f,
                        ),
                      ),
                      Obx(
                        () => Row(
                          children: [
                            Text(
                              controller.myCarModel().data?.voltage ?? '--',
                              style: TextStyle(
                                color: Colours.app_main,
                                fontSize: 28.f,
                              ),
                            ),
                            Text(
                              "V",
                              style: TextStyle(
                                color: Colours.app_main,
                                fontSize: 28.f,
                              ),
                            ),
                            Text(
                              "/",
                              style: TextStyle(
                                color: Colours.app_main,
                                fontSize: 28.f,
                              ),
                            ),
                            Text(
                              controller.myCarModel().data?.capacity ?? '--',
                              style: TextStyle(
                                color: Colours.app_main,
                                fontSize: 28.f,
                              ),
                            ),
                            Text(
                              "Ah",
                              style: TextStyle(
                                color: Colours.app_main,
                                fontSize: 28.f,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "绑定日期：",
                        style: TextStyle(
                          color: Colours.app_normal_grey,
                          fontSize: 28.f,
                        ),
                      ),
                      Obx(
                        () => Text(
                          controller.myCarModel().data?.bindingTime ?? '--',
                          style: TextStyle(
                            color: Colours.app_main,
                            fontSize: 28.f,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 20.h,
            left: 145.w,
            child: Image(
              width: 410.w,
              image: AssetImage('images/my_car01.png'),
            ),
          ),
        ],
      ),
    );
  }
}
