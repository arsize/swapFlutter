import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:swapapp/config.dart';

import 'interceptors.dart';

/// dio 接口请求封装
class HTTP {
  late Dio dio;
  static Options options = Options(
    responseType: ResponseType.json,
  );

  HTTP() {
    dio = Dio(BaseOptions(
      baseUrl: SERVICE_API_RUL,
    ));

    /// 拦截器
    interceptors(dio);
  }

  Future request({
    required String path,
    required String methods,
    data,
    contentType,
    params,
  }) async {
    contentType != null
        ? options.contentType = contentType
        : options.contentType = Headers.jsonContentType;
    options.method = methods;

    var response = await dio.request(
      path,
      options: options,
      data: data,
      queryParameters: params,
    );
    return _handleDecodeJson(response);
  }
}

Map<String, dynamic> _handleDecodeJson(result) {
  var res = jsonDecode(result.toString());
  return res;
}
