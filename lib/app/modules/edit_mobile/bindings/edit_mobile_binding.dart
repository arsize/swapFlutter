import 'package:get/get.dart';

import '../controllers/edit_mobile_controller.dart';

class EditMobileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditMobileController>(
      () => EditMobileController(),
    );
  }
}
