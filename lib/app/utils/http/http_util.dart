/*
 * @Author: Arsize 
 * @Date: 2021-09-06 14:44:36 
 * @Describe: dio封装
 */
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:raintree/app/common/methods/normal.dart';
import 'package:raintree/app/utils/storage.dart';
import 'package:raintree/config.dart';

import 'interceptors.dart';
import 'white_list.dart';

class HTTP {
  static final HTTP _instance = HTTP._internal();
  factory HTTP() => _instance;

  late Dio dio;

  static Options options = Options(
    responseType: ResponseType.json,
  );

  static BaseOptions baseOptions = BaseOptions(
    baseUrl: SERVICEAPIURL,
    headers: {
      'Accept-Language': 'zh',
    },
    contentType: 'application/json; charset=utf-8',
    responseType: ResponseType.json,
  );

  HTTP._internal() {
    dio = Dio(baseOptions);

    /// 拦截器
    interceptors(dio);
  }

  Future request({
    required String path,
    required String methods,
    data,
    params,
    String responseType = 'string',
    Options? options,
  }) async {
    EasyLoading.show(status: '请稍后...');
    Options requestOptions = options ?? Options();
    requestOptions.method = methods;
    print('xx');
    print(path);
    Map<String, dynamic>? _authorization = getAuthorizationHeader(path: path);
    if (_authorization != null) {
      requestOptions = requestOptions.copyWith(headers: _authorization);
    }
    var response = await dio.request(
      path,
      options: requestOptions,
      data: data,
      queryParameters: params,
    );
    EasyLoading.dismiss();
    return responseType == "json"
        ? _handleDecodeJson(response)
        : response.toString();
  }
}

/// 读取token
Map<String, dynamic>? getAuthorizationHeader({path}) {
  Map<String, dynamic>? headers;
  Map<String, dynamic>? _login = LoacalStorage().getJSON(LOGINDATA);
  String? token;
  if (!isInTheList(path, whiteList)) {
    // 不在白名单中的路由需要传token
    if (_login != null) {
      token = _login["appToken"];
      if (token != null) {
        headers = {
          'access_token': token,
        };
      }
    }
  } else {
    print("path 白名单过滤");
  }

  return headers;
}

Map<String, dynamic> _handleDecodeJson(result) {
  var res = jsonDecode(result.toString());
  return res;
}
