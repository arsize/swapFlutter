import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:swapapp/app/entities/user_login_response_model.dart';
import 'package:swapapp/app/utils/log_util.dart';
import 'package:swapapp/app/utils/storage.dart';
import 'package:swapapp/config.dart';
import 'http/http_util.dart';

///全局信息
class Global {
  /// 用户配置
  static UserLoginResponseModel? profile = UserLoginResponseModel(token: null);

  /// 是否第一次打开
  static bool isFirstOpen = false;

  /// 是否离线登录
  static bool isOfflineLogin = false;

  static Future init() async {
    LogUtil.e("全局信息初始化...", tag: "utils/global");
    WidgetsFlutterBinding.ensureInitialized();

    // http 模块初始化
    HTTP();
    // 本地存储初始化
    await LoacalStorage.init();
    // 读取设备第一次打开
    isFirstOpen = !LoacalStorage().getBool(STORAGE_DEVICE_ALREADY_OPEN_KEY);
    if (isFirstOpen) {
      LoacalStorage().setBool(STORAGE_DEVICE_ALREADY_OPEN_KEY, true);
    }

    if (Platform.isAndroid) {
      //设置android状态栏为透明的沉浸。
      //写在组件渲染之后，若在之前MaterialApp组件会覆盖掉这个值。
      SystemUiOverlayStyle systemUiOverlayStyle =
          SystemUiOverlayStyle(statusBarColor: Colors.transparent);
      SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    }
  }

  // 持久化 用户信息
  static Future<bool> saveProfile(UserLoginResponseModel userResponse) {
    profile = userResponse;
    return LoacalStorage()
        .setJSON(STORAGE_USER_PROFILE_KEY, userResponse.toJson());
  }
}
