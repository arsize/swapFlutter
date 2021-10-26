import 'package:get/get.dart';

import '../controllers/admin_cabinet_detail_controller.dart';

class AdminCabinetDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdminCabinetDetailController>(
      () => AdminCabinetDetailController(),
    );
  }
}
