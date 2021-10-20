/*
 * @Author: Arsize 
 * @Date: 2021-10-20 12:03:24 
 * @Describe: 编辑收货地址
 */

import 'package:raintree/app/utils/utils.dart';

Future updateDeliveryAddress({
  consignee,
  consigneePhone,
  detailedAddress,
  takeRegion,
  id,
}) {
  return HTTP().request(
    responseType: "map",
    path: "personalCenter/set/updateDeliveryAddress",
    methods: "post",
    data: {
      "id": id,
      "consignee": consignee,
      "consigneePhone": consigneePhone,
      "detailedAddress": detailedAddress,
      "takeRegion": takeRegion,
      "defaultAddress": false,
    },
  ).then((value) {
    if (value["code"] == 200) {
      return value;
    } else {
      return value;
    }
  });
}
