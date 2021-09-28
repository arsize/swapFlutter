import 'package:get/get.dart';

class ExchangeInfoController extends GetxController {
  RxBool switchValue = false.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

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
