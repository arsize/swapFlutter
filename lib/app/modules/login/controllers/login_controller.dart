import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swapapp/app/colors/colors.dart';
import 'package:swapapp/app/common/methods/checkFormat.dart';

class LoginController extends GetxController {
  // 响应式成员变量
  final prefix = 0.obs;

  // 普通成员变量
  bool isFinish = false;
  String mobile = '';
  String pwd = '';

  // list view 控制器
  late final ScrollController scrollController;
  // mobile 控制器
  late final TextEditingController mobileController;
  // passwd 控制器
  late final TextEditingController pwdController;

  @override
  void onInit() {
    super.onInit();
    scrollController = ScrollController();
    mobileController = TextEditingController();
    pwdController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  @override
  void dispose() {
    scrollController.dispose();
    mobileController.dispose();
    pwdController.dispose();
    super.dispose();
  }

  /// 响应手机前缀变化
  void changePrefix(index) {
    prefix.value = index;
  }

  /// 输入事件监听
  inputOnchange(String text, String type) {
    print('触发了');
    if (type == 'mobile') {
      mobile = text;
    }
    if (type == 'pwd') {
      pwd = text;
    }
    if (mobile != '' && pwd != '') {
      isFinish = true;
    } else {
      isFinish = false;
    }
    update();
  }

  /// 验证表单
  bool checkForm() {
    if (!checkMobile(mobile)) {
      Get.snackbar(
        "注意",
        "手机号码格式错误，请重新填写",
      );
      return false;
    }
    if (!checkPwd(pwd)) {
      Get.snackbar(
        "注意",
        "密码格式错误，请重新填写",
      );
      return false;
    }
    return true;
  }

  /// 登录
  submitTo() {
    if (checkForm()) {
      print("提交");
    } else {
      print("不提交");
    }
  }

  /// 清除输入框
  clearInput({type}) {
    if (type == "mobile") {
      mobileController.clear();
      mobile = "";
    } else if (type == "pwd") {
      pwdController.clear();
      pwd = "";
    }
    isFinish = false;
    update();
  }
}
