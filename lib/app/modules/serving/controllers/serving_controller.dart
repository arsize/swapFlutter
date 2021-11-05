import 'dart:async';
import 'package:get/get.dart';
import 'package:raintree/app/modules/serving/apis/exchange_result.dart';

class ServingController extends GetxController {
  String? orderNo;
  int? borrowBox;
  int? returnBox;
  Timer? exchangeTimer;
  RxInt countdown = 120.obs;

  @override
  void onInit() {
    super.onInit();
    orderNo = Get.parameters["orderNo"];
    // setTimeInterval();
  }

  @override
  void dispose() {
    print("清除定时器disposexxxxxxxxxxxxxxxxxxxxxxxxxxx");
    exchangeTimer?.cancel();
    super.dispose();
  }

  setTimeInterval() {
    const timeout = Duration(seconds: 1);
    Map<String, dynamic>? _result;
    exchangeTimer = Timer.periodic(timeout, (timer) async {
      print("换电过程定时器工作中...");
      countdown.value = countdown.value - 1;
      if (countdown.value <= 0) {
        timer.cancel(); //停止轮询
        print("取消定时器");
        Get.offNamed("/exchange-end-error");
        return;
      }
      _result = await exchangeResult(orderNo: orderNo);
      if (_result?["data"] == null) {
        timer.cancel(); //停止轮询
      } else {
        if (_result?["data"]?["status"] != null) {
          if (_result!["data"]!["status"] != 0) {
            print("操作中");
            if (_result!["data"]!["status"] == 1) {
              print("换电完成，取消定时器");
              Get.offNamed("/exchange-finish");
              timer.cancel(); // 取消定时器
            } else {
              print("换电失败，取消定时器");
              timer.cancel(); // 取消定时器
              if (_result!["data"]!["status"] == -3) {
                Get.offNamed("/exchange-end-error?err=未检测到电池，换电终止");
              } else if (_result!["data"]!["status"] == -4) {
                Get.offNamed("/exchange-end-error?err=因仓门打开失败，换电终止");
              } else if (_result!["data"]!["status"] == -5) {
                Get.offNamed("/exchange-end-error?err=因操作超时，换电终止");
              } else if (_result!["data"]!["status"] == -2) {
                Get.offNamed("/exchange-end-error?err=因电池SN码不匹配，已被电柜吞并，换电终止");
              } else {
                Get.offNamed("/exchange-end-error?err=其它换电终止");
              }
            }
          }
        } else {
          timer.cancel(); // 取消定时器
        }
      }
    });
  }

  @override
  void onClose() {
    exchangeTimer?.cancel();
    print("清除定时器onClosexxxxxxxxxxxxxxxxxxxxxxxxxxx");
  }
}
