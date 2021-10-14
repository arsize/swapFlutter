import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BindContactController extends GetxController {
  late final TextEditingController nameTextController;
  late final TextEditingController mobileController;

  String name = '';
  String mobile = '';

  @override
  void onInit() {
    super.onInit();
    nameTextController = TextEditingController();
    mobileController = TextEditingController();
  }

  @override
  void dispose() {
    nameTextController.dispose();
    mobileController.dispose();
    super.dispose();
  }

  void inputOnchange(text, type) {
    if (type == 'name') {
      name = text;
    } else if (type == 'mobile') {
      mobile = text;
    }
  }

  /// 下一步
  submitTo() {
    if (name == '') {
      Get.snackbar("提示", "请填写紧急联系人姓名");
      return;
    }
    if (mobile == '') {
      Get.snackbar("提示", "请填写紧急联系人手机");
      return;
    }
  }

  @override
  void onClose() {}
}
