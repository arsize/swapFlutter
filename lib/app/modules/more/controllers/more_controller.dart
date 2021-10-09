import 'package:get/get.dart';

class MoreController extends GetxController {
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    print("更多");
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
