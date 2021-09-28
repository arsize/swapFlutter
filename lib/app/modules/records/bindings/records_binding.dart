import 'package:get/get.dart';

import '../controllers/records_controller.dart';

class RecordsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RecordsController>(
      () => RecordsController(),
    );
  }
}
