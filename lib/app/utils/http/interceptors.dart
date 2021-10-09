/*
 * @Author: Arsize 
 * @Date: 2021-09-03 16:16:55 
 * @Describe: 请求拦截器
 */

import 'package:dio/dio.dart';
import 'package:dio_http_formatter/dio_http_formatter.dart';
import 'package:raintree/app/modules/login/api/login_by_mobile.dart';
import 'package:raintree/app/utils/storage.dart';
import 'package:raintree/config.dart';
import 'package:raintree/global.dart';

void interceptors(dio) {
  /// 请求日志
  dio.interceptors.add(HttpFormatter());

  dio.interceptors.add(
    InterceptorsWrapper(onRequest: (e, handler) {
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
  var accountPw = LoacalStorage().getJSON(ACCOUNTPW);
  if (accountPw != null) {
    var result = await loginByMobile(
      account: accountPw["account"],
      password: accountPw["password"],
      areaCode: accountPw["areaCode"],
    );
    await LoacalStorage().setJSON(LOGINDATA, result["data"]);
    print("重新登录成功");
    // 继续发起未完成请求
    Global.currentPage!.onInit();
  }
}
