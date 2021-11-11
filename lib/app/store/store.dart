import 'dart:ui';

import 'package:get/get.dart';
import 'package:raintree/app/entities/entities.dart';
import 'package:raintree/app/entities/exchange_order/exchange_order.dart';
import 'package:raintree/app/entities/login_model.dart';
import 'package:raintree/app/utils/utils.dart';
import 'package:raintree/config.dart';
import 'dart:ui' as ui;

class StoreController extends GetxController {
  static StoreController get to => Get.find();

  var loginData = LoginModel(unregistered: true);
  var cabinetDetail = CabinetDetailModel(); //換電的電櫃詳情
  var exchangeOrder = ExchangeOrder(); //正在換電的訂單信息

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

  void finishBindVehicle() {
    loginData.isBindVehicle = 1;
    update();
  }

  void finishEditName(nickName) {
    loginData.userNickname = nickName;
    update();
  }

  Future getLoginData() async {
    Map<String, dynamic>? _login = await LoacalStorage().getJSON(LOGINDATA);
    print("先走这里");
    if (_login != null) {
      loginData = LoginModel.fromMap(_login);
      if (_login["appToken"] != null) changeLoginStatus(true);
      update();
    }
  }

  Future<void> logout() async {
    await LoacalStorage().remove(LOGINDATA);
    await LoacalStorage().remove(ACCOUNTPW);
    isLogin.value = false;
    Get.offAllNamed("/home");
  }

  /// 刷新当前换电机柜详情
  updateCabinetDetail(String cabinet) {
    cabinetDetail = CabinetDetailModel.fromJson(cabinet);
    update();
  }

  /// 统计可用电池数目
  int canUseBattery() {
    int _count = 0;
    if (cabinetDetail.data != null &&
        cabinetDetail.data!.cabinetBoxInfoList!.isNotEmpty) {
      cabinetDetail.data!.cabinetBoxInfoList!.map((e) {
        if (e.chargeStatus == 2) {
          _count = _count + 1;
        }
      }).toList();
    }
    return _count;
  }
}
