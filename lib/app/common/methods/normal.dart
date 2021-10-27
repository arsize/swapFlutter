/*
 * @Author: Arsize 
 * @Date: 2021-09-03 16:28:13 
 * @Describe: 常用的公共函数
 */

import 'dart:convert';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:date_time_format/date_time_format.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:raintree/app/utils/utils.dart';
import 'package:raintree/config.dart';
import 'package:dio_http_formatter/dio_http_formatter.dart';

/// 判断list中是否有某元素
bool isInTheList(e, List list) {
  return list.any((element) => element == e);
}

/// png转bitmap
Future<Uint8List> getBytesFromAsset(String path, int width) async {
  ByteData data = await rootBundle.load(path);
  ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
      targetWidth: width);
  ui.FrameInfo fi = await codec.getNextFrame();
  return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!
      .buffer
      .asUint8List();
}

/// 刷新用户登录数据,获取新token
Future reFreshToken() async {
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
    print("刷新成功!");
  }
}

Map<String, dynamic> _handleDecodeJson(result) {
  var res = jsonDecode(result.toString());
  return res;
}

/// 格式化时间
String formateTime(time, {second = true}) {
  if (time != null) {
    DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(time);
    return DateTimeFormat.format(dateTime,
        format: second ? r'Y.m.d H:i:s' : r'Y.m.d');
  } else {
    return '--';
  }
}
