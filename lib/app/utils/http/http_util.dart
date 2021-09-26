/*
 * @Author: Arsize 
 * @Date: 2021-09-06 14:44:36 
 * @Describe: dio封装
 */
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:swapapp/config.dart';

import 'interceptors.dart';

class HTTP {
  static HTTP _instance = HTTP._internal();
  factory HTTP() => _instance;

  late Dio dio;

  static Options options = Options(
    responseType: ResponseType.json,
  );

  HTTP._internal() {
    dio = Dio(BaseOptions(
      baseUrl: SERVICE_API_RUL,
      headers: {},
      contentType: 'application/json; charset=utf-8',
      responseType: ResponseType.json,
    ));

    /// 拦截器
    interceptors(dio);
  }

  Future request({
    required String path,
    required String methods,
    data,
    params,
    Options? options,
  }) async {
    Options requestOptions = options ?? Options();
    requestOptions.method = methods;
    Map<String, dynamic>? _authorization = getAuthorizationHeader();
    if (_authorization != null) {
      requestOptions = requestOptions.copyWith(headers: _authorization);
    }
    var response = await dio.request(
      path,
      options: requestOptions,
      data: data,
      queryParameters: params,
    );
    return _handleDecodeJson(response);
  }
}

/// 读取token
Map<String, dynamic>? getAuthorizationHeader() {
  var headers;
  // String? token = Global.profile?.token;
  // if (token != null) {
  //   headers = {
  //     'access_token': '$token',
  //   };
  // }
  return headers;
}

Map<String, dynamic> _handleDecodeJson(result) {
  var res = jsonDecode(result.toString());
  return res;
}
