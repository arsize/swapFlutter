import 'package:get/get.dart';

import '../controllers/exchange_finish_controller.dart';

class ExchangeFinishBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExchangeFinishController>(
      () => ExchangeFinishController(),
    );
  }
}
