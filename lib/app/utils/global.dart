import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:swapapp/app/utils/log_util.dart';
import 'arutil.dart';
import 'http_util.dart';

///全局信息
class Global {
  static HTTP http = HTTP();

  /// 路由监听
  static final RouteObserver<PageRoute> routeObserver =
      RouteObserver<PageRoute>();

  static init(VoidCallback callback) async {
    LogUtil.e("全局信息初始化...", tag: "utils/global");
    WidgetsFlutterBinding.ensureInitialized();
    await ArUtil.getInstance();
    callback();
    if (Platform.isAndroid) {
      //设置android状态栏为透明的沉浸。
      //写在组件渲染之后，若在之前MaterialApp组件会覆盖掉这个值。
      SystemUiOverlayStyle systemUiOverlayStyle =
          SystemUiOverlayStyle(statusBarColor: Colors.transparent);
      SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    }
  }
}
