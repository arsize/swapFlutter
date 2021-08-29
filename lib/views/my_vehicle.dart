/*
 * @Author: Arsize 
 * @Date: 2021-08-25 10:22:50 
 * @Describe: 我的车辆
 */

import 'package:flutter/material.dart';
import 'package:swapapp/themes/colors.dart';
import 'package:swapapp/utils/adapt.dart';
import 'package:swapapp/utils/arutil.dart';
import 'package:swapapp/widgets/common/app_bar.dart';

class MyVehicle extends StatefulWidget {
  const MyVehicle({Key? key}) : super(key: key);

  @override
  _MyVehicleState createState() => _MyVehicleState();
}

class _MyVehicleState extends State<MyVehicle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(
        context,
        title: "我的车辆",
        elevation: 0,
      ),
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
            top: Adapt.height(10),
            left: Adapt.width(145),
            child: Image(
              width: Adapt.width(460),
              height: Adapt.width(364),
              image: AssetImage('images/my_car01.png'),
            ),
          ),
          Positioned(
            top: Adapt.height(340),
            left: Adapt.width(32),
            child: Container(
              width: Adapt.width(686),
              height: Adapt.height(442),
              padding: EdgeInsets.all(Adapt.width(33)),
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
                          fontSize: Adapt.font(28),
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
          )
        ],
      ),
    );
  }
}
