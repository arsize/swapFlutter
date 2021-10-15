import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:raintree/app/modules/edit_nickname/api/change_nike_name.dart';

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

  void finish() async {
    if (nickName == '' || nickName.length > 40) {
      Get.snackbar("提示", "昵称不符合规范，请重新输入");
      nickName = '';
      editInputController.clear();
      return;
    }
    var _name = await changeNikeName(newNikeName: nickName);

    print(_name);
  }
}
