/*
 * @Author: Arsize 
 * @Date: 2021-09-06 11:58:27 
 * @Describe: 路由鉴权中间件
 */
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:raintree/app/routes/app_pages.dart';
import 'package:raintree/app/store/store.dart';

class RouteAuthMiddleware extends GetMiddleware {
  final store = Get.find<StoreController>();
  @override
  RouteSettings? redirect(String? route) {
    print("路由鉴权");
    if (store.isLogin.value) {
      return super.redirect(route);
    } else {
      return RouteSettings(name: Routes.LOGIN);
    }
  }
}
