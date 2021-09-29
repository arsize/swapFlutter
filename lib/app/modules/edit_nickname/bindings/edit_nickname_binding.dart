import 'package:get/get.dart';

import '../controllers/edit_nickname_controller.dart';

class EditNicknameBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditNicknameController>(
      () => EditNicknameController(),
    );
  }
}
