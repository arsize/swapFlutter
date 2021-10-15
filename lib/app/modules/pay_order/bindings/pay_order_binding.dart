import 'package:get/get.dart';

import '../controllers/pay_order_controller.dart';

class PayOrderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PayOrderController>(
      () => PayOrderController(),
    );
  }
}
