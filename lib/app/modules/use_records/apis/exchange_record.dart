/*
 * @Author: Arsize 
 * @Date: 2021-10-23 14:57:11 
 * @Describe: 用户换电记录
 */
import 'dart:convert';

import 'package:raintree/app/utils/utils.dart';

Future chargingAndExchangeRecord() {
  return HTTP().request(
    responseType: 'json',
    path: "app/ctl/chargingAndExchangeRecord",
    methods: "get",
    params: {
      "currentPage": 1,
      "pageSize": 10,
    },
  ).then((value) {
    if (value["code"] != 200) {
    } else {
      return jsonEncode(value);
    }
  });
}
