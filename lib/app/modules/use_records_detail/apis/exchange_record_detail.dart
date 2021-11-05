/*
 * @Author: Arsize 
 * @Date: 2021-11-04 09:39:24 
 * @Describe: 
 */
import 'dart:convert';

import 'package:raintree/app/utils/utils.dart';

Future chargingAndExchangeRecordDetail(orderNo) {
  return HTTP().request(
    responseType: 'json',
    path: "app/ctl/chargingAndExchangeRecordDetail",
    methods: "get",
    params: {
      "orderNo": orderNo,
    },
  ).then((value) {
    if (value["code"] != 200) {
    } else {
      return jsonEncode(value);
    }
  });
}
