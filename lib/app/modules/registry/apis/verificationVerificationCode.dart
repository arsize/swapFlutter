/*
 * @Author: Arsize 
 * @Date: 2021-09-03 12:16:00 
 * @Describe: 验证短信验证码
 */
import 'package:get/get.dart';
import 'package:swapapp/app/utils/global.dart';
import 'package:swapapp/app/values/result_code.dart';

Future verificationVerificationCode({
  account,
  verificationCode,
}) async {
  return Global.http.request(
    path: "app/login/verificationVerificationCode",
    methods: 'post',
    data: {
      'account': account,
      'verificationCode': verificationCode,
    },
  ).then((value) {
    if (value["code"] == VERIFICATION_CODE_HAS_EXPIRED) {
      Get.snackbar("错误", "验证码已过期，请重新发送");
    }
    return value;
  });
}
