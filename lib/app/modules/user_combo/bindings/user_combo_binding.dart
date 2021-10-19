import 'package:get/get.dart';

import '../controllers/user_combo_controller.dart';

class UserComboBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserComboController>(
      () => UserComboController(),
    );
  }
}
