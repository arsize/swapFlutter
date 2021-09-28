/*
 * @Author: Arsize 
 * @Date: 2021-09-03 16:16:55 
 * @Describe: 请求拦截器
 */

import 'package:dio/dio.dart';
import 'package:dio_http_formatter/dio_http_formatter.dart';
import 'package:swapapp/app/common/methods/normal.dart';
import 'package:swapapp/app/modules/login/api/loginByMobile.dart';
import 'package:swapapp/app/utils/storage.dart';
import 'package:swapapp/config.dart';
import 'package:swapapp/global.dart';

import 'white_list.dart';

void interceptors(dio) {
  /// 请求日志
  dio.interceptors.add(HttpFormatter());

  dio.interceptors.add(
    InterceptorsWrapper(onRequest: (e, handler) {
      if (!isInTheList(e.path, whiteList)) {
        // 不在白名单中的路由需要传token
      }
      print("请求");
      print(e.path);
      handler.next(e);
    }, onResponse: (e, handler) {
      var code = e.data["code"];
      if (code == 200) {
        handler.next(e);
      } else {
        switch (code) {
          case 1003:
            // token失效,重新登录
            print("token失效");
            reLogin();
            break;
          default:
        }
        print("异常");
        handler.next(e);
      }
    }, onError: (DioError e, handler) {
      // 当请求失败时做一些预处理
      return handler.next(e);
    }),
  );
}

/// 重新登录,获取新token
void reLogin() async {
  var account_pw = LoacalStorage().getJSON(ACCOUNTPW);
  if (account_pw != null) {
    var result = await loginByMobile(
      account: account_pw["account"],
      password: account_pw["password"],
      areaCode: account_pw["areaCode"],
    );
    await LoacalStorage().setJSON(LOGINDATA, result["data"]);
    print("重新登录成功");
    // 继续发起未完成请求
    Global.currentPage!.onInit();
  }
}
