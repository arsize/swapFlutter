/*
 * @Author: Arsize 
 * @Date: 2021-10-21 15:15:42 
 * @Describe:换电之前检查基础信息
 */

import 'package:raintree/app/utils/utils.dart';

Future checkBeforeExchange() {
  return HTTP()
      .request(
    responseType: "json",
    path: "app/ctl/checkBeforeExchange",
    methods: "get",
  )
      .then(
    (value) {
      if (value["code"] == 200) {
        return value;
      } else {}
    },
  );
}
