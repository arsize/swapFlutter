/*
 * @Author: Arsize 
 * @Date: 2021-09-03 11:25:36 
 * @Describe: 用户注册
 */

import 'package:get/get.dart';
import 'package:swapapp/app/utils/http/http_util.dart';
import 'package:swapapp/app/values/result_code.dart';
import 'package:swapapp/config.dart';

Future registerAccount({
  account,
  areaCode,
  password,
  simpleAppId = SIMPLEAPPID,
}) async {
  return HTTP().request(
    methods: "post",
    path: "app/login/registerAccount",
    data: {
      "account": account,
      "areaCode": areaCode,
      "password": password,
      "simpleAppId": simpleAppId,
    },
  ).then((value) {
    if (value["code"] == APP_NOT_ACCREDIT) {
      Get.snackbar("错误", "应用未授权");
    }
    return value;
  });
}
