/*
 * @Author: Arsize 
 * @Date: 2021-08-24 14:39:34 
 * @Describe: 屏幕适配类
 */
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Adapt {
  /// 设置宽度
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
