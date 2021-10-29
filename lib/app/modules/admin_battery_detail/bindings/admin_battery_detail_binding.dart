import 'package:get/get.dart';

import '../controllers/admin_battery_detail_controller.dart';

class AdminBatteryDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdminBatteryDetailController>(
      () => AdminBatteryDetailController(),
    );
  }
}
