import 'package:get/get.dart';

class TransitInputController extends GetxController {
  List history = [];
  @override
  void onInit() {
    super.onInit();
    for (var i = 0; i < 6; i++) {
      history.add(i);
    }
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  onSubmitted(value) {
    print("输入完成");
    print(value);
    Get.offNamed("/exchange-info");
  }
}
