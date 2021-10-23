import 'package:get/get.dart';

class AgreementController extends GetxController {
  String type = '';

  @override
  void onInit() {
    super.onInit();
    type = Get.parameters["type"]!;
    print(type);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
