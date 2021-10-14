import 'package:get/get.dart';

import '../controllers/submit_order_controller.dart';

class SubmitOrderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SubmitOrderController>(
      () => SubmitOrderController(),
    );
  }
}
