import 'package:get/get.dart';

import '../controllers/pay_order_success_controller.dart';

class PayOrderSuccessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PayOrderSuccessController>(
      () => PayOrderSuccessController(),
    );
  }
}
