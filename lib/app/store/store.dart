import 'package:get/get.dart';
import 'package:swapapp/app/entities/login_model.dart';
import 'package:swapapp/app/utils/utils.dart';
import 'package:swapapp/config.dart';

class StoreController extends GetxController {
  static StoreController get to => Get.find();

  final loginData = LoginModel(registered: false).obs;
  final RxBool isLogin = false.obs;

  @override
  void onInit() {
    super.onInit();
    Map<String, dynamic>? _login = LoacalStorage().getJSON(LOGINDATA);
    if (_login != null) {
      loginData(LoginModel.fromJson(_login));
      if (_login["appToken"] != null) changeLoginStatus(true);
    }
  }

  void changeLoginStatus(bool flag) {
    isLogin.value = flag;
  }

  Future<void> logout() async {
    await LoacalStorage().remove(LOGINDATA);
    isLogin.value = false;
    update();
  }
}
