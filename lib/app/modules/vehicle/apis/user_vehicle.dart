/*
 * @Author: Arsize 
 * @Date: 2021-10-18 15:05:24 
 * @Describe: 我的车辆API
 */

import 'package:raintree/app/utils/utils.dart';

Future userVehicle() {
  return HTTP()
      .request(
        path: "app/wx/userVehicle",
        methods: "get",
      )
      .then((value) => value);
}
