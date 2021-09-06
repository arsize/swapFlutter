import 'package:get/get.dart';

import '../controllers/my_controller.dart';

class MyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyController>(
      () => MyController(),
    );
  }
}
