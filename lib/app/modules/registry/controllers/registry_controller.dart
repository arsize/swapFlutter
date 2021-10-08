import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:raintree/app/common/methods/checkFormat.dart';
import 'package:raintree/app/modules/registry/apis/api.dart';
import 'package:raintree/app/utils/storage.dart';
import 'package:raintree/app/values/mobile_prefix.dart';

//
//
class RegistryController extends GetxController {
  // 响应式成员变量
  final prefix = 0.obs;

  // 普通成员变量
  String mobile = '';
  String pinCode = '';
  String pwd = '';
  String repwd = '';
  String stepType = 'step1'; //当前步骤1
  bool isFinish = false;
  int secondsMax = 10;
  int sendCount = 10;
  double diffTime = 0.0;
  List prefixList = prefixDefault;

  Timer? _timer; //倒计时定时器

  // 列表滚动
  late final ScrollController scrollController;
  // 手机输入框
  late final TextEditingController mobileInputController;
  // 验证码输入框
  late final TextEditingController pinInputController;
  // 密码输入框
  late final TextEditingController pwdInputController;
  // 密码验证框
  late final TextEditingController repwdInputController;

  @override
  void onInit() {
    super.onInit();
    scrollController = ScrollController();
    mobileInputController = TextEditingController();
    pinInputController = TextEditingController();
    pwdInputController = TextEditingController();
    repwdInputController = TextEditingController();
  }

  @override
  void dispose() {
    scrollController.dispose();
    mobileInputController.dispose();
    pinInputController.dispose();
    pwdInputController.dispose();
    repwdInputController.dispose();
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
  step1Onchange(String text, String type) {
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

  /// 步骤2输入事件监听
  step2Onchange(String text, String type) {
    if (type == 'pwd') {
      pwd = text;
    }
    if (type == 'repeat_pwd') {
      repwd = text;
    }
    if (pwd != '' && repwd != '') {
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
    if (!checkMobile(mobile)) {
      Get.snackbar(
        "注意",
        "请输入正确的手机号码",
      );
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
    var result = await getVerificationCode(
      account: mobile,
      areaCode: prefixList[prefix.value]["prefix"],
    );
    int code = result["code"];
    if (code == 200) {
      Get.snackbar(
        "成功",
        "验证码已发送，请查看",
      );
    }

    // 将这个时间点存起来
    // String now = DateTime.now().toString();
    // StorageUtil().setItem("pin_code_date", now);
  }

  /// 计算时间差值
  countTimeDiff() {
    // var temp = StorageUtil().getItem("pin_code_date");
    // int now = DateTime.now().millisecondsSinceEpoch;
    // if (temp != null) {
    //   var late = DateTime.fromMillisecondsSinceEpoch(DateTime.parse(temp));
    // } else {}
  }

  /// 下一步
  nextTo() async {
    var result = await verificationVerificationCode(
      account: mobile,
      verificationCode: pinCode,
    );
    int code = result["code"];
    if (code == 200) {
      isFinish = false;
      stepType = "step2";
    }
    update();
  }

  /// 提交注册信息
  submitTo() async {
    var result = await registerAccount(
      account: mobile,
      areaCode: prefixList[prefix.value]["prefix"],
      password: pwd,
    );
    int code = result["code"];
    if (code == 200) {
      Get.snackbar(
        "成功",
        "登录成功",
      );
      LoacalStorage().setJSON("user", result["data"]);
    }
  }

  /// 清除输入框
  clearInput({type}) {
    if (type == "mobile") {
      mobileInputController.clear();
      mobile = "";
    } else if (type == "pin") {
      pinInputController.clear();
      pinCode = "";
    } else if (type == 'pwd') {
      pwdInputController.clear();
      pwd = "";
    } else if (type == 'repeat_pwd') {
      repwdInputController.clear();
      repwd = "";
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
