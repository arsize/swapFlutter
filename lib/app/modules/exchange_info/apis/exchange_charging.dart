/*
 * @Author: Arsize 
 * @Date: 2021-10-21 15:19:18 
 * @Describe: 开始换电
 */
import 'dart:convert';

import 'package:get/get.dart';
import 'package:raintree/app/common/widgets/common_wigets.dart';
import 'package:raintree/app/utils/utils.dart';
import 'package:raintree/app/values/result_code.dart';

Future exchangeCharging({cabinetdid}) {
  return HTTP().request(
    responseType: "json",
    path: "app/ctl/exchangeCharging",
    methods: "post",
    data: {
      "cabinetdid": cabinetdid,
    },
  ).then(
    (value) {
      if (value["code"] == 200) {
        return jsonEncode(value);
      } else {
        var _msg = '';
        switch (value["code"]) {
          case NOT_BIND_BATTERY:
            _msg = "未绑定电池，请先绑定电池";
            break;
          default:
        }
        arDialog(
          context: Get.context!,
          content: _msg,
          fn1Text: "我知道了",
          fn1: () {
            Get.back();
          },
        );
      }
    },
  );
}
