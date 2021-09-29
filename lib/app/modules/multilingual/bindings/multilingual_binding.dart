import 'package:get/get.dart';

import '../controllers/multilingual_controller.dart';

class MultilingualBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MultilingualController>(
      () => MultilingualController(),
    );
  }
}
