import 'package:get/get.dart';

import '../controllers/unbind_battery_controller.dart';

class UnbindBatteryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UnbindBatteryController>(
      () => UnbindBatteryController(),
    );
  }
}
