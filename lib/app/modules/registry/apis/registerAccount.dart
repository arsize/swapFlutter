/*
 * @Author: Arsize 
 * @Date: 2021-09-03 11:25:36 
 * @Describe: 用户注册
 */

import 'package:get/get.dart';
import 'package:swapapp/app/utils/global.dart';
import 'package:swapapp/app/values/result_code.dart';
import 'package:swapapp/config.dart';

//83300533-620185
//93ebab5d-dff4-45fb-ad76-116a4ad064dc
Future registerAccount({
  account,
  areaCode,
  password,
  simpleAppId = SIMPLEAPPID,
}) async {
  return Global.http.request(
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
