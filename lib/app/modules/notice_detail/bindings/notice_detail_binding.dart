import 'package:get/get.dart';

import '../controllers/notice_detail_controller.dart';

class NoticeDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NoticeDetailController>(
      () => NoticeDetailController(),
    );
  }
}
