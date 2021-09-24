import 'package:get/get.dart';
import 'package:swapapp/app/store/store.dart';
import 'package:swapapp/app/utils/storage.dart';
import 'package:swapapp/config.dart';

class MyController extends GetxController {
  bool isLogin = false;

  late var userInfo;
  @override
  void onInit() {
    super.onInit();
    checkLogin();
    print('login');
  }

  checkLogin() {
    var user_info = LoacalStorage().getJSON(STORAGE_USER_PROFILE_KEY);
    // user_info = true;
    if (user_info != null) {
      isLogin = true;
      userInfo = user_info;
    } else {
      isLogin = false;
    }
    update();
  }

  @override
  void onReady() {
    super.onReady();
    print("ready");
  }

  @override
  void onClose() {}
}
