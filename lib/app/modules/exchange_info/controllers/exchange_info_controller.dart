import 'package:get/get.dart';

class ExchangeInfoController extends GetxController {
  RxBool switchValue = false.obs;

  @override
  void onClose() {}

  changeSwitch(value) {
    switchValue.value = value;
  }

  // 开始换电
  beginExchange() {
    Get.offNamed("/serving");
  }
}
