import 'package:get/get.dart';

import '../controllers/bind_car_controller.dart';

class BindCarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BindCarController>(
      () => BindCarController(),
    );
  }
}
