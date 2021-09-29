/*
 * @Author: Arsize 
 * @Date: 2021-09-29 15:27:31 
 * @Describe: 多语言
 */
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:swapapp/app/colors/colors.dart';
import 'package:swapapp/app/common/widgets/app_bar.dart';
import 'package:swapapp/app/utils/utils.dart';

import '../controllers/multilingual_controller.dart';

class MultilingualView extends GetView<MultilingualController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(title: "多语言"),
      body: Container(
        padding: EdgeInsets.only(
          top: Adapt.width(20),
          left: Adapt.width(32),
          right: Adapt.width(32),
        ),
        color: Colors.white,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(
                left: Adapt.width(32),
                right: Adapt.width(32),
              ),
              height: Adapt.width(149),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "简体中文",
                    style: TextStyle(
                      fontSize: Adapt.font(30),
                      color: Colours.app_main,
                    ),
                  ),
                  Icon(Icons.check)
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 1,
              color: Colours.app_bg_grey,
            ),
            Container(
              padding: EdgeInsets.only(
                left: Adapt.width(32),
                right: Adapt.width(32),
              ),
              height: Adapt.width(149),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "English",
                    style: TextStyle(
                      fontSize: Adapt.font(30),
                      color: Colours.app_main,
                    ),
                  ),
                  Icon(Icons.check)
                ],
              ),
            ),
            Container(
              height: Adapt.width(98),
              decoration: BoxDecoration(
                color: Colours.app_main,
                borderRadius: ArUtil.border(
                  Adapt.width(15),
                ),
              ),
              alignment: Alignment.center,
              child: Text(
                "保存",
                style: TextStyle(
                  fontSize: Adapt.font(32),
                  color: Colours.app_yellow,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
