import 'package:get/get.dart';

import '../controllers/pay_combo_controller.dart';

class PayComboBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PayComboController>(
      () => PayComboController(),
    );
  }
}
