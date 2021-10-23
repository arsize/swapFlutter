import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:raintree/app/common/methods/normal.dart';
import 'package:raintree/app/modules/edit_nickname/api/change_nike_name.dart';
import 'package:raintree/app/store/store.dart';

class EditNicknameController extends GetxController {
  // 控制器
  late final TextEditingController editInputController;
  final store = Get.find<StoreController>();

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
      EasyLoading.showInfo('昵称不符合规范，请重新输入');
      nickName = '';
      editInputController.clear();
      return;
    }
    var _name = await changeNikeName(newNikeName: nickName);
    if (_name != null) {
      store.finishEditName(nickName);
      reFreshToken();
      EasyLoading.showSuccess('修改成功!');
      Get.back();
    }
  }
}
