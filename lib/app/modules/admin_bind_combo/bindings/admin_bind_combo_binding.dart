import 'package:get/get.dart';

import '../controllers/admin_bind_combo_controller.dart';

class AdminBindComboBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdminBindComboController>(
      () => AdminBindComboController(),
    );
  }
}
