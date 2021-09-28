import 'package:get/get.dart';

import '../controllers/my_package_controller.dart';

class MyPackageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyPackageController>(
      () => MyPackageController(),
    );
  }
}
