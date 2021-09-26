/*
 * @Author: Arsize 
 * @Date: 2021-09-06 11:58:27 
 * @Describe: 路由鉴权中间件
 */
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swapapp/app/routes/app_pages.dart';

class RouteAuthMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    print("路由鉴权");
    if (route == Routes.LOGIN || route == Routes.MY) {
      return super.redirect(route);
    } else {
      Future.delayed(
          Duration(seconds: 1), () => Get.snackbar("提示", "登录过期,请重新登录"));
      return RouteSettings(name: Routes.LOGIN);
    }
  }
}
