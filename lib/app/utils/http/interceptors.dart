/*
 * @Author: Arsize 
 * @Date: 2021-09-03 16:16:55 
 * @Describe: 请求拦截器
 */

import 'package:dio/dio.dart';
import 'package:dio_http_formatter/dio_http_formatter.dart';
import 'package:swapapp/app/common/methods/normal.dart';
import 'package:swapapp/app/utils/storage.dart';
import 'package:swapapp/config.dart';

import 'white_list.dart';

void interceptors(dio) {
  /// 请求日志
  dio.interceptors.add(HttpFormatter());

  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (e, handler) {
        if (!isInTheList(e.path, whiteList)) {
          // 不在白名单中的路由需要传token
          String? token = StorageUtil().getItem(STORAGE_USER_TOKEN_KEY);
          e.headers.putIfAbsent("access_token", () => token);
        }
        handler.next(e);
      },
      onResponse: (e, handler) {
        handler.next(e);
      },
    ),
  );
}
