import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:raintree/app/modules/feedback/apis/feedback.dart';

class FeedbackController extends GetxController {
  // 意见反馈
  late final TextEditingController feedBackInputController;

  String feedBackText = '';

  @override
  void onInit() {
    feedBackInputController = TextEditingController();
    super.onInit();
  }

  void textOnchange(text) {
    feedBackText = text;
  }

  void submitTo() async {
    if (feedBackText == '') {
      EasyLoading.showInfo("请填写意见反馈");
      return;
    }
    var _result = await feedbackFn(feedBackText);
    if (_result != null) {
      EasyLoading.showSuccess("提交成功");
    }
  }

  @override
  void dispose() {
    feedBackInputController.dispose();
    super.dispose();
  }

  @override
  void onClose() {}
}
