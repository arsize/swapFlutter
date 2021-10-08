import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:raintree/app/utils/storage.dart';
import 'app/store/initial_binding.dart';
import 'app/utils/http/http_util.dart';

class Global {
  static GetxController? currentPage; //存储当前页面实例
  static Future init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await LoacalStorage.init();
    HTTP(); //初始化Dio封装
    InitialBinding().dependencies(); //绑定GETX默认依赖
    if (Platform.isAndroid) {
      SystemUiOverlayStyle systemUiOverlayStyle =
          SystemUiOverlayStyle(statusBarColor: Colors.transparent);
      SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    }
  }
}
