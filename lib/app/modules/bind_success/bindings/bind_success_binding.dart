import 'package:get/get.dart';

import '../controllers/bind_success_controller.dart';

class BindSuccessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BindSuccessController>(
      () => BindSuccessController(),
    );
  }
}
