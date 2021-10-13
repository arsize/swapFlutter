import 'package:get/get.dart';

import '../controllers/bind_contact_controller.dart';

class BindContactBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BindContactController>(
      () => BindContactController(),
    );
  }
}
