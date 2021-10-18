import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
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
      EasyLoading.showInfo('请填写紧急联系人姓名');
      return;
    }
    if (mobile == '') {
      EasyLoading.showInfo('请填写紧急联系人手机');
      return;
    }
    Get.offNamed('/bind-car?name=$name&mobile=$mobile');
  }

  @override
  void onClose() {}
}
