/*
 * @Author: Arsize 
 * @Date: 2021-10-20 11:02:50 
 * @Describe: 删除用户地址
 */

import 'package:raintree/app/utils/utils.dart';

Future deleteDeliveryAddress({adderssId}) {
  return HTTP().request(
    path: "personalCenter/set/deleteDeliveryAddress",
    methods: "get",
    params: {
      "adderssId": adderssId,
    },
  ).then((value) => value);
}
