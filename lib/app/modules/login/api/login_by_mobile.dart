/*
 * @Author: Arsize 
 * @Date: 2021-09-03 11:28:34 
 * @Describe: 账号密码登录
 */
import 'package:raintree/app/utils/http/http_util.dart';

Future loginByMobile({account, password, areaCode}) {
  return HTTP().request(
    responseType: "json",
    path: "app/login/appRegister",
    methods: "post",
    data: {
      "account": account,
      "password": password,
      "areaCode": areaCode,
    },
  ).then((value) => value);
}
