import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:swapapp/app/colors/colors.dart';
import 'package:swapapp/app/utils/utils.dart';
import 'package:swapapp/app/common/widgets/app_bar.dart';
import 'package:swapapp/app/common/widgets/button.dart';
import 'package:swapapp/app/values/mobile_prefix.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  static List prefixList = prefixDefault;
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
        brightness: Brightness.light,
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
              "欢迎使用",
              style: TextStyle(
                fontSize: 36.f,
                fontWeight: FontWeight.w500,
                color: Colours.app_main,
              ),
            ),
            SizedBox(
              height: 100.h,
            ),
            Center(
              child: _inputMobile(context),
            ),
            SizedBox(
              height: 30.h,
            ),
            Center(
              child: _inputPassWd(),
            ),
            SizedBox(
              height: 80.h,
            ),
            Center(
              child: GetBuilder<LoginController>(
                builder: (_) {
                  return _.isFinish
                      ? arBtn(
                          fn: () {
                            controller.submitTo();
                          },
                          text: "登录",
                          width: 690,
                        )
                      : arBtn(
                          fn: null,
                          text: "登录",
                          width: 690,
                        );
                },
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              children: [
                InkWell(
                  child: Text(
                    "注册账号",
                    style: TextStyle(color: Colours.app_green),
                  ),
                  onTap: () => {Get.offNamed("/registry")},
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "忘记密码",
                    style: TextStyle(color: Colours.app_green),
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

  // 输入手机号
  _inputMobile(context) {
    return Container(
      width: 690.w,
      height: 96.w,
      decoration: BoxDecoration(
        borderRadius: ArUtil.border(12),
        color: Colours.app_FA_grey,
      ),
      child: Container(
        padding: EdgeInsets.only(left: 30.w),
        child: Row(
          children: [
            InkWell(
              child: Row(
                children: [
                  Obx(() => Text(
                      "+${prefixList[controller.prefix.value]['prefix']}")),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
              onTap: () => {
                showModalBottomSheet(
                  context: context,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  builder: (BuildContext context) {
                    return Container(
                      height: 500.h,
                      padding: EdgeInsets.only(left: 40.w, right: 40.w),
                      child: ListView.builder(
                        itemCount: prefixList.length,
                        controller: controller.scrollController,
                        itemBuilder: (ctx, index) => InkWell(
                          onTap: () {
                            controller.changePrefix(index);
                            Get.back();
                          },
                          child: ListTile(
                            title: Text(
                              "${prefixList[index]['cn']}(+${prefixList[index]['prefix']})",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                )
              },
            ),
            SizedBox(
              width: 16.w,
            ),
            Expanded(
              flex: 1,
              child: TextField(
                controller: controller.mobileController,
                decoration: InputDecoration(
                  hintText: "请输入手机号",
                  border: InputBorder.none,
                ),
                onChanged: (String text) {
                  controller.inputOnchange(text, 'mobile');
                },
              ),
            ),
            SizedBox(
              width: 15.w,
            ),
            Expanded(
              child: GetBuilder<LoginController>(
                builder: (_) {
                  return _.mobile.length > 1
                      ? Align(
                          alignment: Alignment.center,
                          child: InkWell(
                            onTap: () {
                              controller.clearInput(type: "mobile");
                            },
                            child: Image(
                              width: 32.w,
                              height: 32.w,
                              image: AssetImage("images/input_icon_close.png"),
                            ),
                          ),
                        )
                      : Container();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  // 输入密码
  _inputPassWd() {
    return Container(
      width: 690.w,
      height: 96.w,
      decoration: BoxDecoration(
        borderRadius: ArUtil.border(12),
        color: Colours.app_FA_grey,
      ),
      child: Container(
        padding: EdgeInsets.only(left: 30.w),
        child: Row(
          children: [
            Image(
              width: 44.w,
              height: 44.h,
              image: AssetImage("images/lock_outline.png"),
            ),
            SizedBox(
              width: 70.w,
            ),
            Expanded(
              child: TextField(
                controller: controller.pwdController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "请输入密码",
                  border: InputBorder.none,
                ),
                onChanged: (String text) {
                  controller.inputOnchange(text, 'pwd');
                },
              ),
            ),
            SizedBox(
              width: 15.w,
            ),
            Expanded(
              child: GetBuilder<LoginController>(
                builder: (_) {
                  return _.pwd.length > 1
                      ? Align(
                          alignment: Alignment.center,
                          child: InkWell(
                            onTap: () {
                              controller.clearInput(type: "pwd");
                            },
                            child: Image(
                              width: 32.w,
                              height: 32.w,
                              image: AssetImage("images/input_icon_close.png"),
                            ),
                          ),
                        )
                      : Container();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
