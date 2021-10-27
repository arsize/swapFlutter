import 'package:get/get.dart';

import '../controllers/exchange_end_error_controller.dart';

class ExchangeEndErrorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExchangeEndErrorController>(
      () => ExchangeEndErrorController(),
    );
  }
}
