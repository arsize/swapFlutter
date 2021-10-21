/*
 * @Author: Arsize 
 * @Date: 2021-10-21 16:05:00 
 * @Describe: 轮询换电过程
 */

import 'package:raintree/app/utils/utils.dart';

Future exchangeResult({orderNo}) {
  print('orderNo');
  print(orderNo);
  return HTTP().request(
    responseType: "json",
    path: "app/ctl/exchangeResult",
    methods: "get",
    params: {
      "exchangeOrderNo": orderNo,
    },
  ).then(
    (value) {
      return value;
    },
  );
}
