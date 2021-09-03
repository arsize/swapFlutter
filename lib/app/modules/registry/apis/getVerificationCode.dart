/*
 * @Author: Arsize 
 * @Date: 2021-09-03 11:28:34 
 * @Describe: 获取验证码
 */
import 'package:swapapp/app/utils/global.dart';

Future getVerificationCode({account, areaCode}) {
  return Global.http.request(
    path: "app/login/getVerificationCode",
    methods: "post",
    data: {
      "account": account,
      "areaCode": areaCode,
    },
  ).then((value) => value);
}
