/*
 * @Author: Arsize 
 * @Date: 2021-08-24 14:40:19 
 * @Describe: dio封装
 */
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:swapapp/common/values.dart';
import 'package:swapapp/utils/storage.dart';

class HttpUtil {
  static HttpUtil _instance = HttpUtil._internal();
  factory HttpUtil() => _instance;

  late Dio dio;
  HttpUtil._internal() {
    BaseOptions options = BaseOptions(
      baseUrl: SERVICE_API_RUL,

      /// Http请求头
      headers: {
        "language": "zh",
      },

      /// 请求的Content-type,默认值是"application/json;charset=utf-8"
      contentType: 'application/json;charset=utf-8',
      responseType: ResponseType.json,
    );

    dio = Dio(options);

    // 添加拦截器
    dio.interceptors.add(
      InterceptorsWrapper(
        onResponse: (e, handler) {
          try {
            var code = jsonDecode(e.toString())["code"];
            if (code != 200) {
              if (code == 415) {
              } else {
                handler.next(e);
              }
            } else {
              handler.next(e);
            }
          } catch (e) {
            print(e);
          }
        },
      ),
    );
  }

  /// 读取本地配置
  Options getLocalOptions() {
    Options options;
    String token = StorageUtil().getItem(STORAGE_USER_TOKEN_KEY);
    options = Options(headers: {
      'access_token': '$token',
    });

    return options;
  }

  /// resful GET 操作
  Future get(
    String path, {
    params,
    options,
  }) async {
    var tokenOptions = options ?? getLocalOptions();
    var response = await dio.get(
      path,
      options: tokenOptions,
      queryParameters: params,
    );
    return _handleDecodeJson(response);
  }
}

Map<String, dynamic> _handleDecodeJson(result) {
  var res = jsonDecode(result.toString());
  return res;
}
