import 'package:get/get.dart';

import '../controllers/notice_list_controller.dart';

class NoticeListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NoticeListController>(
      () => NoticeListController(),
    );
  }
}
