/*
 * @Author: Arsize 
 * @Date: 2021-09-06 11:58:27 
 * @Describe: 路由鉴权中间件
 */
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swapapp/app/routes/app_pages.dart';
import 'package:swapapp/app/utils/http/authentication.dart';

class RouteAuthMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    print("路由鉴权");
    print(route);
    if (!isAuthenticated()) {
      return RouteSettings(name: Routes.LOGIN);
    }

    return super.redirect(route);
  }
}
