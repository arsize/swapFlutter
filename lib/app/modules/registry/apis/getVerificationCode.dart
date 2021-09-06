/*
 * @Author: Arsize 
 * @Date: 2021-09-03 11:28:34 
 * @Describe: 获取验证码
 */
import 'package:swapapp/app/utils/http/http_util.dart';

Future getVerificationCode({account, areaCode}) {
  return HTTP().request(
    path: "app/login/getVerificationCode",
    methods: "post",
    data: {
      "account": account,
      "areaCode": areaCode,
    },
  ).then((value) => value);
}
