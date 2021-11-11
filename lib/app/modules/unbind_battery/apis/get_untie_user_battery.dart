/*
 * @Author: Arsize 
 * @Date: 2021-11-11 17:19:45 
 * @Describe: 用户解绑电池
 */
import 'dart:convert';

import 'package:raintree/app/utils/http/http_util.dart';

Future getUntieUserBattery({accountUid}) {
  return HTTP().request(
    responseType: 'json',
    path: "unbindBattery/getUntieUserBattery",
    methods: "get",
    params: {
      "accountUid": accountUid,
    },
  ).then((value) {
    if (value["code"] != 200) {
    } else {
      return jsonEncode(value);
    }
  });
}
