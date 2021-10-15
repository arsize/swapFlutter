/*
 * @Author: Arsize 
 * @Date: 2021-10-15 17:28:52 
 * @Describe: 修改用户昵称
 */

import 'package:raintree/app/utils/utils.dart';

Future changeNikeName({newNikeName}) {
  return HTTP().request(
    path: "app/login/changeNikeName",
    methods: "get",
    params: {
      "newNikeName": newNikeName,
    },
  ).then((value) {
    if (value["code"] == 200) {
      return value;
    } else {}
  });
}
