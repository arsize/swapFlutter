/*
 * @Author: Arsize 
 * @Date: 2021-10-21 15:15:42 
 * @Describe:换电之前检查基础信息
 */

import 'package:get/get.dart';
import 'package:raintree/app/common/widgets/common_wigets.dart';
import 'package:raintree/app/utils/utils.dart';
import 'package:raintree/app/values/result_code.dart';

Future checkBeforeExchange() {
  return HTTP()
      .request(
    responseType: "json",
    path: "app/ctl/checkBeforeExchange",
    methods: "get",
  )
      .then(
    (value) {
      if (value["code"] == 200) {
        return value;
      } else {
        var _msg = '';
        switch (value["code"]) {
          case EXCHANGE_BATTERY_ONGOING_ORDER:
            _msg = "存在进行中的换电订单,请稍后再试";

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
