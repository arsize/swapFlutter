import 'package:get/get.dart';

import '../controllers/feedback_controller.dart';

class FeedbackBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FeedbackController>(
      () => FeedbackController(),
    );
  }
}
