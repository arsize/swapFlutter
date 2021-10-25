import 'package:get/get.dart';

import '../controllers/common_problem_controller.dart';

class CommonProblemBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CommonProblemController>(
      () => CommonProblemController(),
    );
  }
}
