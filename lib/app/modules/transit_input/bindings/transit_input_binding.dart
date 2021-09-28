import 'package:get/get.dart';

import '../controllers/transit_input_controller.dart';

class TransitInputBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TransitInputController>(
      () => TransitInputController(),
    );
  }
}
