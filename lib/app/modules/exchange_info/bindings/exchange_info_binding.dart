import 'package:get/get.dart';

import '../controllers/exchange_info_controller.dart';

class ExchangeInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExchangeInfoController>(
      () => ExchangeInfoController(),
    );
  }
}
