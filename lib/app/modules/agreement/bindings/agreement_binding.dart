import 'package:get/get.dart';

import '../controllers/agreement_controller.dart';

class AgreementBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AgreementController>(
      () => AgreementController(),
    );
  }
}
