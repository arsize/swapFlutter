import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:swapapp/app/utils/storage.dart';
import 'package:swapapp/config.dart';

/// dio 接口请求封装
class HTTP {
  late Dio dio;

  HTTP() {
    BaseOptions options = BaseOptions(
      baseUrl: SERVICE_API_RUL,
      contentType: Headers.jsonContentType,
      responseType: ResponseType.json,
    );

    dio = Dio(options);

    // 响应拦截器
    dio.interceptors.add(
      InterceptorsWrapper(
        onResponse: (e, handler) {
          try {
            var code = jsonDecode(e.toString())["code"];
            if (code != 200) {
              // code error
              if (code == 415) {
              } else {
                handler.next(e);
              }
            } else {
              // success!
              handler.next(e);
            }
          } catch (e) {
            // network error
            print(e);
          }
        },
      ),
    );
  }

  /// 读取本地配置
  Options getLocalOptions() {
    Options options;
    String? token = StorageUtil().getItem(STORAGE_USER_TOKEN_KEY);
    if (token != null) {
      options = Options(headers: {
        'access_token': '$token',
      });
    } else {
      options = Options();
    }

    return options;
  }

  /// Resful GET
  Future get({
    required String path,
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

  /// Resful Post
  Future post({
    required String path,
    data,
    options,
  }) async {
    print("dio");
    var tokenOptions = options ?? getLocalOptions();
    var response = await dio.post(
      path,
      options: tokenOptions,
      data: data,
    );
    return _handleDecodeJson(response);
  }
}

Map<String, dynamic> _handleDecodeJson(result) {
  var res = jsonDecode(result.toString());
  return res;
}
