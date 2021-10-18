/*
 * @Author: Arsize 
 * @Date: 2021-09-03 16:16:55 
 * @Describe: 请求拦截器
 */

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:dio_http_formatter/dio_http_formatter.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:raintree/app/utils/http/http_util.dart';
import 'package:raintree/app/utils/storage.dart';
import 'package:raintree/app/values/result_code.dart';
import 'package:raintree/config.dart';

void interceptors(dio) {
  /// 请求日志
  dio.interceptors.add(HttpFormatter());

  dio.interceptors.add(
    InterceptorsWrapper(onRequest: (e, handler) {
      handler.next(e);
    }, onResponse: (e, handler) async {
      var code = e.data["code"];
      if (code == 200) {
        handler.next(e);
      } else {
        switch (code) {

          /// token 失效自动重连
          case ACCESS_TOKEN_EXPIRE:
            dio.lock();
            await reLogin();
            var _result = await reApi(e.requestOptions);
            dio.unlock();
            handler.next(_result);
            break;

          /// 服务器错误
          case SERVICE_ERROR:
            EasyLoading.showInfo('服务器错误，请稍后再试');
            handler.next(e);
            break;
          default:
            handler.next(e);
        }
      }
    }, onError: (DioError e, handler) {
      // 当请求失败时做一些预处理
      return handler.next(e);
    }),
  );
}

/// 重新登录,获取新token
Future reLogin() async {
  var accountPw = LoacalStorage().getJSON(ACCOUNTPW);
  if (accountPw != null) {
    var _loginDio = Dio(HTTP.baseOptions);
    _loginDio.interceptors.add(HttpFormatter());

    var result = await _loginDio.post("app/login/appRegister", data: {
      "account": accountPw["account"],
      "password": accountPw["password"],
      "areaCode": accountPw["areaCode"],
    });
    await LoacalStorage().setJSON(LOGINDATA, _handleDecodeJson(result)["data"]);
    print("重新登录成功");
  }
}

Map<String, dynamic> _handleDecodeJson(result) {
  var res = jsonDecode(result.toString());
  return res;
}

/// 重新发送接口
Future reApi(RequestOptions requestOptions) async {
  var _reApiDio = Dio(HTTP.baseOptions);
  _reApiDio.interceptors.add(HttpFormatter());
  Options _options = Options();

  _options = _options.copyWith(
    method: requestOptions.method,
  );
  Map<String, dynamic>? _authorization =
      getAuthorizationHeader(path: requestOptions.path);
  if (_authorization != null) {
    _options = _options.copyWith(headers: _authorization);
  }
  var response = await _reApiDio.request(
    requestOptions.path,
    options: _options,
    data: requestOptions.data,
    queryParameters: requestOptions.queryParameters,
  );

  return response;
}
