import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:raintree/app/colors/colors.dart';
import 'package:raintree/app/common/widgets/common_wigets.dart';
import 'package:raintree/app/modules/registry/views/widgets/input_mobile.dart';
import 'package:raintree/app/modules/registry/views/widgets/input_passwd.dart';
import 'package:raintree/app/modules/registry/views/widgets/input_pincode.dart';
import 'package:raintree/app/utils/utils.dart';

import '../controllers/registry_controller.dart';

class RegistryView extends GetView<RegistryController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "",
          style: TextStyle(
            fontSize: 36.f,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.close,
            color: Colours.app_main,
          ),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Container(
        width: double.infinity,
        color: Colors.white,
        padding: EdgeInsets.only(
          left: 30.w,
          right: 30.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              width: 454.w,
              height: 62.w,
              image: AssetImage("images/home_logo_gray.png"),
            ),
            SizedBox(
              height: 42.h,
            ),
            Text(
              "注册账号",
              style: TextStyle(
                fontSize: 36.f,
                fontWeight: FontWeight.w500,
                color: Colours.app_main,
              ),
            ),
            SizedBox(
              height: 100.h,
            ),
            GetBuilder<RegistryController>(builder: (_) {
              return _.stepType == 'step1'
                  ? Center(
                      child: InputMobile(),
                    )
                  : Center(
                      child: InputPassWd(
                        type: "pwd",
                      ),
                    );
            }),
            SizedBox(
              height: 30.h,
            ),
            GetBuilder<RegistryController>(builder: (_) {
              return _.stepType == 'step1'
                  ? Center(
                      child: InputPinCode(),
                    )
                  : Center(
                      child: InputPassWd(
                        type: "repeat_pwd",
                      ),
                    );
            }),
            SizedBox(
              height: 80.h,
            ),
            Center(
              child: GetBuilder<RegistryController>(
                builder: (_) {
                  if (_.stepType == 'step1') {
                    return arBtn(
                      fn: _.isFinish ? () => controller.nextTo() : null,
                      text: "下一步",
                      width: 690,
                    );
                  } else {
                    return arBtn(
                      fn: _.isFinish ? () => controller.submitTo() : null,
                      text: "提交",
                      width: 690,
                    );
                  }
                },
              ),
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Get.offNamed("/login");
                  },
                  child: Container(
                    padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
                    child: Text(
                      "已有账号，立即登录",
                      style: TextStyle(
                        color: Colours.app_green,
                      ),
                    ),
                  ),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
          ],
        ),
      ),
    );
  }
}
