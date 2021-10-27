/*
 * @Author: Arsize 
 * @Date: 2021-10-22 09:54:32 
 * @Describe: 用户套餐列表
 */
import 'dart:convert';

import 'package:raintree/app/utils/utils.dart';

Future getUserFrequencyCardList() {
  return HTTP()
      .request(
    responseType: 'json',
    path: "wallet/getUserFrequencyCardList",
    methods: "get",
  )
      .then(
    (value) {
      if (value["code"] == 200) {
        return jsonEncode(value);
      } else {
        return value;
      }
    },
  );
}
