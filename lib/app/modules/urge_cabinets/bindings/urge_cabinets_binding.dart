import 'package:get/get.dart';

import '../controllers/urge_cabinets_controller.dart';

class UrgeCabinetsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UrgeCabinetsController>(
      () => UrgeCabinetsController(),
    );
  }
}
