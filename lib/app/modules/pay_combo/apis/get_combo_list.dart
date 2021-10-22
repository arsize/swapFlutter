/*
 * @Author: Arsize 
 * @Date: 2021-10-22 12:02:03 
 * @Describe: 获取可用套餐列表
 */

import 'dart:convert';

import 'package:raintree/app/utils/utils.dart';

Future getFrequencyCardList() {
  return HTTP()
      .request(
    responseType: "json",
    path: "wallet/getFrequencyCardList",
    methods: "get",
  )
      .then((value) {
    if (value["code"] != 200) {
      //异常
    } else {
      return jsonEncode(value);
    }
  });
}
