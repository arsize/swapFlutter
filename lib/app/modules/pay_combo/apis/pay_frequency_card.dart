/*
 * @Author: Arsize 
 * @Date: 2021-10-22 15:57:21 
 * @Describe: 套餐购买
 */
import 'dart:convert';

import 'package:get/get.dart';
import 'package:raintree/app/common/widgets/common_wigets.dart';
import 'package:raintree/app/utils/utils.dart';
import 'package:raintree/app/values/result_code.dart';

Future payFrequencyCard({frequencyCardId}) {
  return HTTP().request(
      responseType: "json",
      path: "pay/payFrequencyCard",
      methods: "post",
      data: {
        "enetsPay": true,
        "frequencyCardId": frequencyCardId,
      }).then((value) {
    return value;
  });
}
