import 'package:get/get.dart';

import '../controllers/my_qrcode_controller.dart';

class MyQrcodeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyQrcodeController>(
      () => MyQrcodeController(),
    );
  }
}
