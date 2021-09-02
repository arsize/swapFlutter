import 'package:get/get.dart';

import '../controllers/registry_controller.dart';

class RegistryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegistryController>(
      () => RegistryController(),
    );
  }
}
