/*
 * @Author: Arsize 
 * @Date: 2021-10-19 17:31:22 
 * @Describe: 新增收货地址
 */

import 'package:raintree/app/store/store.dart';
import 'package:raintree/app/utils/utils.dart';
import 'package:get/get.dart';

Future addDeliveryAddress({
  consignee,
  consigneePhone,
  detailedAddress,
  takeRegion,
}) {
  final store = Get.find<StoreController>();
  return HTTP().request(
    path: "personalCenter/set/addDeliveryAddress",
    methods: "post",
    data: {
      "accountUid": store.loginData.uid,
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
      // var _msg = '';
      return value;
    }
  });
}
