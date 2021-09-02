import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swapapp/app/common/methods/checkFormat.dart';
import 'package:swapapp/app/utils/storage.dart';

class RegistryController extends GetxController {
  // 响应式成员变量
  final prefix = 0.obs;

  // 普通成员变量
  String mobile = '';
  String pinCode = '';
  String stepType = 'step1'; //当前步骤1
  bool isFinish = false;
  int secondsMax = 60;
  int sendCount = 60;
  double diffTime = 0.0;

  Timer? _timer; //倒计时定时器

  // list view 控制器
  late final ScrollController scrollController;
  // input1 控制器
  late final TextEditingController input1Controller;
  // input2 控制器
  late final TextEditingController input2Controller;

  @override
  void onInit() {
    super.onInit();
    scrollController = ScrollController();
    input1Controller = TextEditingController();
    input2Controller = TextEditingController();
  }

  @override
  void dispose() {
    scrollController.dispose();
    input1Controller.dispose();
    input2Controller.dispose();
    if (_timer != null) {
      _timer!.cancel();
    }
    super.dispose();
  }

  /// 响应手机前缀变化
  void changePrefix(index) {
    prefix.value = index;
  }

  /// 步骤1输入事件监听
  inputOnchange(String text, String type) {
    if (type == 'mobile') {
      mobile = text;
    }
    if (type == 'pin') {
      pinCode = text;
    }
    if (mobile != '' && pinCode != '') {
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
    if (!checkPin(pinCode)) {
      Get.snackbar(
        "注意",
        "验证码格式错误，请重新填写",
      );
      return false;
    }
    return true;
  }

  // 获取验证码
  getPinCode() async {
    if (sendCount != secondsMax) {
      return;
    }
    const timeout = const Duration(seconds: 1);
    _timer?.cancel();
    _timer = Timer.periodic(timeout, (timer) {
      if (sendCount > 0) {
        sendCount -= 1;
      } else {
        timer.cancel();
        sendCount = secondsMax;
      }
      update(["pin_code_timer"]);
    });
    // 发起请求
    Get.snackbar(
      "成功",
      "验证码已发送，请查看",
    );
    // 将这个时间点存起来
    String now = DateTime.now().toString();
    StorageUtil().setItem("pin_code_date", now);
  }

  /// 计算时间差值
  countTimeDiff() {
    var temp = StorageUtil().getItem("pin_code_date");
    // int now = DateTime.now().millisecondsSinceEpoch;
    // if (temp != null) {
    //   var late = DateTime.fromMillisecondsSinceEpoch(DateTime.parse(temp));
    // } else {}
    print("str");
  }

  /// 下一步
  nextTo() {}

  /// 步骤2输入事件监听
  pwdOnchange(String text, String type) {}

  /// 清除输入框
  clearInput({type}) {
    if (type == "mobile") {
      input1Controller.clear();
      mobile = "";
    } else if (type == "pwd") {
      input2Controller.clear();
      pinCode = "";
    }
    isFinish = false;
    update();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
