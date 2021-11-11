import 'package:get/get.dart';

import '../controllers/service_agent_controller.dart';

class ServiceAgentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ServiceAgentController>(
      () => ServiceAgentController(),
    );
  }
}
