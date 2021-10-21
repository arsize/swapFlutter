import 'package:get/get.dart';

import '../controllers/pay_package_list_controller.dart';

class PayPackageListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PayPackageListController>(
      () => PayPackageListController(),
    );
  }
}
