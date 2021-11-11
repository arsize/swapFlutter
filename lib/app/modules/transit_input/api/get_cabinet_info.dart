import 'dart:convert';

import 'package:get/get.dart';
import 'package:raintree/app/common/widgets/common_wigets.dart';
import 'package:raintree/app/modules/camera_scan/controllers/camera_scan_controller.dart';
import 'package:raintree/app/utils/utils.dart';
import 'package:raintree/app/values/result_code.dart';

Future getCabinetInfoByScan({cabinetId, from}) {
  return HTTP().request(
    responseType: "json",
    path: "cabinet/getCabinetInfoByScan",
    methods: "post",
    data: {
      "cabinetId": cabinetId,
    },
  ).then((value) {
    if (value["code"] != 200) {
      var _msg = '';
      var type = 'info';

      switch (value["code"]) {
        case CABINET_DONT_EXISTS:
          _msg = "电柜未开通，请稍后再试";
          break;
        case UNPAY_CABINET_AREA_BATTERYRENT:
          _msg = "未开通当前地区换电服务，请稍后再试";
          break;
        case NO_FULL_CHARGED_BOX:
          _msg = "暂无满电仓，请稍后再试";
          break;
        case EXISTED_CONTINUOUS_MONTHLY_FREQUENCY_CARD:
          _msg = "电池类型未设置单次收费套餐，请稍后再试";
          break;
        case NO_BATTERY_CAN_NOT_CHANGE_ELECTRIC:
          _msg = "未绑定电池，暂不能使用换电服务";
          break;
        default:
      }
      if (type == 'info') {
        arDialog(
          context: Get.context!,
          content: _msg,
          fn1Text: "我知道了",
          fn1: () {
            if (from == 'camera') {
              final camera = Get.find<CameraScanController>();
              camera.qrController?.resumeCamera();
            }
            Get.back();
          },
        );
      }
    } else {
      return jsonEncode(value);
    }
  });
}
