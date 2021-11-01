import 'package:get/get.dart';

class ExchangeEndErrorController extends GetxController {
  String err = '因操作超时，换电终止';
  @override
  void onInit() {
    super.onInit();
    err = Get.parameters["err"]!;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
