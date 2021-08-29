/*
 * @Author: Arsize 
 * @Date: 2021-08-24 14:41:25 
 * @Describe: 提供默认样式AppBar组件
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swapapp/utils/utils.dart';

defaultAppBar(context, {String title = '', elevation = 4.0}) {
  return AppBar(
    title: Text(
      title,
      style: TextStyle(
        fontSize: Adapt.font(36),
      ),
    ),
    elevation: elevation + 0.0,
    centerTitle: true,
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back_ios,
        color: Colors.white,
      ),
      onPressed: () {
        Navigator.of(context).pop();
      },
    ),
  );
}
