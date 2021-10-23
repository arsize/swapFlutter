import 'package:get/get.dart';

import '../controllers/use_records_controller.dart';

class UseRecordsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UseRecordsController>(
      () => UseRecordsController(),
    );
  }
}
