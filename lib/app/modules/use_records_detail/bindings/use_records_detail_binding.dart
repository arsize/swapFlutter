import 'package:get/get.dart';

import '../controllers/use_records_detail_controller.dart';

class UseRecordsDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UseRecordsDetailController>(
      () => UseRecordsDetailController(),
    );
  }
}
