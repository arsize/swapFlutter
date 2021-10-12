import 'package:get/get.dart';

class TransitInputController extends GetxController {
  List history = [].obs;

  @override
  void onInit() {
    super.onInit();
  }

  onSubmitted(value) {
    Get.offNamed("/exchange-info");
  }
}
