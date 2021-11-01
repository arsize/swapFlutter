/*
 * @Author: Arsize 
 * @Date: 2021-09-28 17:02:42 
 * @Describe: 服务进行中
 */
library serving_view;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_gifs/loading_gifs.dart';
import 'package:raintree/app/colors/colors.dart';
import 'package:raintree/app/common/widgets/app_bar.dart';
import 'package:raintree/app/utils/utils.dart';

import '../controllers/serving_controller.dart';

part './widgets/serving_panel.dart';
part './widgets/serving_panel_line.dart';
part './widgets/box_info.dart';

class ServingView extends GetView<ServingController> {
  final ctrl = Get.find<ServingController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(title: "服务进行中", elevation: 0),
      body: Stack(
        alignment: Alignment.center,
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 0,
            child: Image(
              width: Get.width,
              height: 560.h,
              image: AssetImage("images/serving_view_topimg.png"),
            ),
          ),
          Positioned(
            top: 324.h,
            left: 32.w,
            child: ServingPanel(),
          ),
          Positioned(
            bottom: 156.h,
            child: Row(
              children: [
                Text(
                  "如有疑问，请",
                  style: TextStyle(
                    color: Colours.app_normal_grey,
                    fontSize: 28.f,
                  ),
                ),
                Text(
                  "联系客服",
                  style: TextStyle(
                    color: Colours.app_green,
                    fontSize: 28.f,
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 32.h,
            child: InkWell(
              onTap: () {
                Get.offAllNamed("/exchange-finish");
              },
              child: Container(
                width: 686.w,
                height: 100.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: ArUtil.border(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colours.app_E1_grey,
                      offset: Offset(0.0, 3.0),
                      blurRadius: 5,
                      spreadRadius: 0,
                    )
                  ],
                ),
                alignment: Alignment.center,
                child: Text(
                  "返回首页",
                  style: TextStyle(
                    color: Colours.app_main,
                    fontSize: 32.f,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
