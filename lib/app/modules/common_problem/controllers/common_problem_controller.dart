import 'package:get/get.dart';

class CommonProblemController extends GetxController {
  String title = "";
  String content = "";
  @override
  void onInit() {
    super.onInit();
    title = Get.parameters["title"] ?? '';
  }

  @override
  void onClose() {}
}
