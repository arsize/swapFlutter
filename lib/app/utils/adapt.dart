/*
 * @Author: Arsize 
 * @Date: 2021-08-24 14:39:34 
 * @Describe: 屏幕适配
 */
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class Adapt {
  /// 设置宽度
  static init(BuildContext context) {
    ScreenUtil.init(
      BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width,
        maxHeight: MediaQuery.of(context).size.height,
      ),
      designSize: Size(750, 1334),
      orientation: Orientation.portrait,
    );
  }

  static double width(double width) {
    return ScreenUtil().setWidth(width);
  }

  /// 设置高度
  static double height(double height) {
    return ScreenUtil().setHeight(height);
  }

  /// 设置字体尺寸
  static double font(double fontSize) {
    return ScreenUtil().setSp(fontSize);
  }
}
