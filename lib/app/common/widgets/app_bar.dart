/*
 * @Author: Arsize 
 * @Date: 2021-08-24 14:41:25 
 * @Describe: 提供默认样式AppBar组件
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:raintree/app/colors/colors.dart';
import 'package:raintree/app/utils/utils.dart';

defaultAppBar({String title = '', background = 'black', elevation = 4.0}) {
  return AppBar(
    title: Text(
      title,
      style: TextStyle(
        fontSize: 36.f,
      ),
    ),
    backgroundColor: background == 'light' ? Colors.white : Colours.app_main,
    elevation: elevation + 0.0,
    centerTitle: true,
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back_ios,
        color: background == 'light' ? Colours.app_main : Colors.white,
      ),
      onPressed: () {
        Get.back();
      },
    ),
  );
}
