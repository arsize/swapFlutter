/*
 * @Author: Arsize 
 * @Date: 2021-10-15 17:28:52 
 * @Describe: 修改用户昵称
 */

import 'dart:convert';

import 'package:raintree/app/utils/utils.dart';

Future changeNikeName({newNikeName}) {
  return HTTP().request(
    responseType: 'json',
    path: "account/changeNikeName",
    methods: "get",
    params: {
      "newNikeName": newNikeName,
    },
  ).then((value) {
    if (value["code"] != 200) {
    } else {
      return value;
    }
  });
}
