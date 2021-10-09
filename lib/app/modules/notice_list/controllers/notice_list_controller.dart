import 'package:get/get.dart';

class NoticeListController extends GetxController {
  // 普通变量
  List noticeList = [];
  @override
  void onInit() {
    super.onInit();
    for (var i = 0; i < 5; i++) {
      noticeList.add(i);
    }
  }

  @override
  void onClose() {}
}
