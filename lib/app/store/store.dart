import 'dart:ui';

import 'package:get/get.dart';
import 'package:raintree/app/entities/login_model.dart';
import 'package:raintree/app/utils/utils.dart';
import 'package:raintree/config.dart';
import 'dart:ui' as ui;

class StoreController extends GetxController {
  static StoreController get to => Get.find();

  final loginData = LoginModel(registered: false).obs;
  final RxBool isLogin = false.obs;
  final RxString language = ui.window.locale.toString().obs;

  @override
  void onInit() {
    super.onInit();
    getLoginData();
    // logout();
  }

  void changeLanguage(lan) {
    language.value = lan;
    Locale locale;
    if (lan == 'en_US') {
      locale = Locale('en', 'US');
      Get.updateLocale(locale);
    } else if (lan == 'zh_CN') {
      locale = Locale('zh', 'CN');
      Get.updateLocale(locale);
    }
  }

  void changeLoginStatus(bool flag) {
    isLogin.value = flag;
  }

  void getLoginData() {
    Map<String, dynamic>? _login = LoacalStorage().getJSON(LOGINDATA);
    if (_login != null) {
      loginData(LoginModel.fromJson(_login));
      if (_login["appToken"] != null) changeLoginStatus(true);
    }
  }

  Future<void> logout() async {
    await LoacalStorage().remove(LOGINDATA);
    await LoacalStorage().remove(ACCOUNTPW);
    isLogin.value = false;
    Get.offAllNamed("/home");
  }
}
