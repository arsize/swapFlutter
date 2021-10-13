import 'package:get/get.dart';
import 'package:raintree/app/common/widgets/common_wigets.dart';
import 'package:raintree/app/utils/utils.dart';
import 'package:raintree/app/values/result_code.dart';

Future getCabinetInfoByScan({cabinetId}) {
  return HTTP().request(
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
        default:
      }
      if (type == 'info') {
        arDialog(
          context: Get.context!,
          content: _msg,
          fn1Text: "我知道了",
          fn1: () {
            Get.back();
          },
        );
      }
    }
  });
}
