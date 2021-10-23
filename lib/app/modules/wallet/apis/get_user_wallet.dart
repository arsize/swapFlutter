/*
 * @Author: Arsize 
 * @Date: 2021-10-23 12:19:20 
 * @Describe: 用户钱包
 */

import 'package:raintree/app/utils/utils.dart';

Future getUserWalletInfo() {
  return HTTP().request(
    responseType: 'json',
    path: "wallet/getUserWalletInfo",
    methods: "get",
    data: {},
  ).then((value) => value);
}
