import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:swapapp/app/utils/storage.dart';
import 'app/utils/http/http_util.dart';

/// 全局信息
class Global {
  static GetxController? ctl = null;

  static Future init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await LoacalStorage.init();
    HTTP(); //初始化Dio封装
    if (Platform.isAndroid) {
      SystemUiOverlayStyle systemUiOverlayStyle =
          SystemUiOverlayStyle(statusBarColor: Colors.transparent);
      SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    }
  }
}
