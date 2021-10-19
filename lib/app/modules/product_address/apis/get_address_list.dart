/*
 * @Author: Arsize 
 * @Date: 2021-10-19 17:44:44 
 * @Describe: 获取收货地址
 */

import 'package:get/get.dart';
import 'package:raintree/app/store/store.dart';
import 'package:raintree/app/utils/utils.dart';

Future getDeliveryAddressList() {
  final store = Get.find<StoreController>();
  return HTTP().request(
    path: "personalCenter/set/getDeliveryAddressList",
    methods: "get",
    params: {
      "accountUid": store.loginData.uid,
      "currentPage": "1",
      "pageSize": "10",
    },
  ).then((value) => value);
}
