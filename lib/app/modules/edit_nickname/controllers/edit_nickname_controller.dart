import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditNicknameController extends GetxController {
  // 控制器
  late final TextEditingController editInputController;

  String nickName = '';

  @override
  void onInit() {
    super.onInit();
    editInputController = TextEditingController();
  }

  @override
  void dispose() {
    editInputController.dispose();
    super.dispose();
  }

  void inputOnchange(e) {
    nickName = e;
  }

  void finish() {
    print('点击了');
    print(nickName);
    if (nickName == '' || nickName.length > 40) {
      Get.snackbar("提示", "昵称不符合规范，请重新输入");
      nickName = '';
      editInputController.clear();
      return;
    }
  }
}
