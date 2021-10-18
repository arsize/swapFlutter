/*
 * @Author: Arsize 
 * @Date: 2021-10-18 11:12:58 
 * @Describe: 确认绑定车辆
 */

import 'package:get/get.dart';
import 'package:raintree/app/common/widgets/common_wigets.dart';
import 'package:raintree/app/utils/utils.dart';
import 'package:raintree/app/values/result_code.dart';

Future confirmBindingVehicle({mobile, name, numberPlate}) {
  return HTTP().request(
    path: "app/ctl/confirmBindingVehicle",
    methods: "get",
    params: {
      "emergencyContactMobile": mobile,
      "emergencyContactName": name,
      "numberPlate": numberPlate,
    },
  ).then((value) {
    if (value["code"] == 200) {
      return value;
    } else {
      var _msg = '';
      switch (value["code"]) {
        case IS_ALREADY_BOUND_VEHICLE:
          _msg = "用户已绑定车辆";
          break;
        case VEHICLE_NOT_EXIST:
          _msg = "无此车辆信息，请检查后重新输入";
          break;
        case VEHICLE_HAS_BIND:
          _msg = "车辆已被绑定，请检查后重新输入";
          break;
        default:
      }
      arDialog(
        context: Get.context!,
        content: _msg,
        fn1Text: "我知道了",
        fn1: () {
          Get.back();
        },
      );
      return value;
    }
  });
}
