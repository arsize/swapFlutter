/*
 * @Author: Arsize 
 * @Date: 2021-10-15 16:54:35 
 * @Describe: 查询车辆详情
 */
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
    if (value["code"] != 200) {
      switch (value["code"]) {
        case VEHICLE_NOT_EXIST:
          print('VEHICLE_NOT_EXIST');
          break;
        default:
      }
    }
  });
}
