/*
 * @Author: Arsize 
 * @Date: 2021-11-04 16:02:35 
 * @Describe: 管理员-机柜列表
 */
import 'package:raintree/app/utils/utils.dart';

Future queryCabinetList() {
  return HTTP().request(
    path: "cabinetAdmin/queryCabinetList",
    methods: "post",
    data: {
      "current": 1,
      "size": 10,
      "ofLineStatus": 1,
    },
  ).then(
    (value) {
      return value;
    },
  );
}
