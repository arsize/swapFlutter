import 'package:get/get.dart';

import '../controllers/admin_cabinet_list_controller.dart';

class AdminCabinetListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdminCabinetListController>(
      () => AdminCabinetListController(),
    );
  }
}
