import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:raintree/app/colors/colors.dart';
import 'package:raintree/app/common/widgets/app_bar.dart';
import 'package:raintree/app/common/widgets/button.dart';
import 'package:raintree/app/utils/utils.dart';
import '../controllers/feedback_controller.dart';

class FeedbackView extends GetView<FeedbackController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(title: "意见反馈"),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.only(
          top: 40.h,
          bottom: 35.h,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: Get.width,
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  width: 686.w,
                  padding: EdgeInsets.all(32.w),
                  color: Colours.app_F5_grey,
                  child: TextField(
                    controller: controller.feedBackInputController,
                    maxLength: 200,
                    maxLines: 7,
                    decoration: InputDecoration.collapsed(
                      hintText: "您还需要我们为您解决什么问题",
                      hintStyle: TextStyle(
                        color: Colours.app_normal_grey,
                        fontSize: 28.f,
                      ),
                    ),
                    onChanged: (String text) {
                      controller.textOnchange(text);
                    },
                  ),
                ),
              ),
            ),
            arBtn(
              fn: () {
                controller.submitTo();
              },
              text: "提交",
            ),
          ],
        ),
      ),
    );
  }
}
