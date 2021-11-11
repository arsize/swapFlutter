import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:raintree/app/entities/admin_user_info/admin_user_info.dart';
import 'package:raintree/app/modules/unbind_battery/apis/get_untie_user_battery.dart';
import 'package:raintree/app/modules/unbind_battery/apis/get_user_binding.dart';

class UnbindBatteryController extends GetxController {
  late final TextEditingController userController;
  AdminUserInfo adminUserInfo = AdminUserInfo();
  bool isFinish = false;
  @override
  void onInit() {
    super.onInit();
    userController = TextEditingController();
  }

  @override
  void dispose() {
    userController.dispose();
    super.dispose();
  }

  inputOnchange(text) async {
    var _result = await getUserBindingInformation2(mobile: text);
    if (_result != null) {
      adminUserInfo = AdminUserInfo.fromJson(_result);
      isFinish = true;
    } else {
      adminUserInfo = AdminUserInfo();
      isFinish = false;
    }

    update();
  }

  submitTo() async {
    var accountUid = adminUserInfo.data?.accountUid;
    if (accountUid != null) {
      var _result = await getUntieUserBattery(accountUid: accountUid);
      if (_result != null) {
        EasyLoading.showSuccess("解绑成功");
        Get.back();
      }
    } else {
      EasyLoading.showInfo("找不到该用户");
    }
  }

  @override
  void onClose() {}
}
