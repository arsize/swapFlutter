import 'package:get/get.dart';

import '../controllers/admin_scan_controller.dart';

class AdminScanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdminScanController>(
      () => AdminScanController(),
    );
  }
}
