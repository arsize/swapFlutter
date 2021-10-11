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
              height: Adapt.height(508),
              decoration: BoxDecoration(
                color: Colours.app_main,
              ),
            ),
          ),
          Positioned(
            top: 340.h,
            left: Adapt.width(32),
            child: Container(
              width: Adapt.width(686),
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
                      Text(
                        "RDGF34233657",
                        style: TextStyle(
                          color: Colours.app_main,
                          fontSize: Adapt.font(28),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Adapt.height(16),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "陆管局锁头编码：",
                        style: TextStyle(
                          color: Colours.app_normal_grey,
                          fontSize: Adapt.font(28),
                        ),
                      ),
                      Text(
                        "A000001",
                        style: TextStyle(
                          color: Colours.app_main,
                          fontSize: Adapt.font(28),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Adapt.height(16),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "车牌号：",
                        style: TextStyle(
                          color: Colours.app_normal_grey,
                          fontSize: Adapt.font(28),
                        ),
                      ),
                      Text(
                        "23456",
                        style: TextStyle(
                          color: Colours.app_main,
                          fontSize: Adapt.font(28),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Adapt.height(16),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "电池SN码：",
                        style: TextStyle(
                          color: Colours.app_normal_grey,
                          fontSize: Adapt.font(28),
                        ),
                      ),
                      Text(
                        "SN000000001",
                        style: TextStyle(
                          color: Colours.app_main,
                          fontSize: Adapt.font(28),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Adapt.height(16),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "电池型号：",
                        style: TextStyle(
                          color: Colours.app_normal_grey,
                          fontSize: Adapt.font(28),
                        ),
                      ),
                      Text(
                        "48V12AH",
                        style: TextStyle(
                          color: Colours.app_main,
                          fontSize: Adapt.font(28),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Adapt.height(16),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "电压/容量：",
                        style: TextStyle(
                          color: Colours.app_normal_grey,
                          fontSize: Adapt.font(28),
                        ),
                      ),
                      Text(
                        "48V/20Ah",
                        style: TextStyle(
                          color: Colours.app_main,
                          fontSize: Adapt.font(28),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Adapt.height(16),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "绑定日期：",
                        style: TextStyle(
                          color: Colours.app_normal_grey,
                          fontSize: Adapt.font(28),
                        ),
                      ),
                      Text(
                        "2019.10.12 11:02",
                        style: TextStyle(
                          color: Colours.app_main,
                          fontSize: Adapt.font(28),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: Adapt.height(30),
            left: Adapt.width(145),
            child: Image(
              width: Adapt.width(460),
              height: Adapt.width(364),
              image: AssetImage('images/my_car01.png'),
            ),
          ),
        ],
      ),
    );
  }
}