import 'package:get/get.dart';
import 'package:swapapp/app/utils/utils.dart';
import 'package:swapapp/config.dart';

class StoreController extends GetxController {
  static StoreController get to => Get.find();

  late var token;

  /// 全局登录状态
  final RxBool loginStatus = false.obs;
  // final UserModel userProfile =

  @override
  void onInit() {
    super.onInit();
    token = LoacalStorage().getJSON(TOKEN);
    if (token != null) {
      loginStatus.value = true;
    }
    print("初始化:store$loginStatus");
  }

  void changeLoginStatus(bool flag) {
    loginStatus.value = flag;
  }

  void saveToken(String token) async {
    await LoacalStorage().setJSON(TOKEN, token);
    this.token = token;
    update();
  }

  Future<void> logout() async {
    await LoacalStorage().remove(TOKEN);
    token = null;
    loginStatus.value = false;
    update();
  }
}
