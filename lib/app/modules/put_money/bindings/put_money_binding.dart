import 'package:get/get.dart';

import '../controllers/put_money_controller.dart';

class PutMoneyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PutMoneyController>(
      () => PutMoneyController(),
    );
  }
}
