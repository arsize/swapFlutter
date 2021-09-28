import 'package:get/get.dart';

import '../controllers/serving_controller.dart';

class ServingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ServingController>(
      () => ServingController(),
    );
  }
}
