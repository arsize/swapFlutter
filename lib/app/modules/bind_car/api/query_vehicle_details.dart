/*
 * @Author: Arsize 
 * @Date: 2021-10-15 16:54:35 
 * @Describe: 查询车辆详情
 */
import 'package:get/get.dart';
import 'package:raintree/app/common/widgets/common_wigets.dart';
import 'package:raintree/app/utils/utils.dart';
import 'package:raintree/app/values/result_code.dart';

Future queryVehicleDetails({numberPlate}) {
  return HTTP().request(
    path: "app/ctl/queryVehicleDetails",
    methods: "get",
    params: {
      "numberPlate": numberPlate,
    },
  ).then((value) {
    var _msg = '';
    if (value["code"] != 200) {
      switch (value["code"]) {
        case VEHICLE_NOT_EXIST:
          _msg = "无此车辆信息，请检查后重新输入";
          break;
        case VEHICLE_HAS_BIND:
          _msg = "车辆已被绑定，请检查后重新输入";
          break;
        default:
          _msg = '';
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
    } else {
      return value;
    }
  });
}
