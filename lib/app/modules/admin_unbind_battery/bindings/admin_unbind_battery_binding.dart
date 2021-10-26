import 'package:get/get.dart';

import '../controllers/admin_unbind_battery_controller.dart';

class AdminUnbindBatteryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdminUnbindBatteryController>(
      () => AdminUnbindBatteryController(),
    );
  }
}
