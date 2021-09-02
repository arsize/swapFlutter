import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:swapapp/app/common/widgets/app_bar.dart';
import 'package:swapapp/app/colors/colors.dart';
import 'package:swapapp/app/common/widgets/common_wigets.dart';
import 'package:swapapp/app/data/mobile_prefix.dart';
import 'package:swapapp/app/utils/utils.dart';

import '../controllers/registry_controller.dart';

class RegistryView extends GetView<RegistryController> {
  final registry_c = Get.put(RegistryController());
  static List prefixList = prefixDefault;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(
        background: 'light',
        elevation: 0,
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
                      child: _inputMobile(context),
                    )
                  : Center(
                      child: _inputPassWd(),
                    );
            }),
            SizedBox(
              height: 30.h,
            ),
            Center(
              child: _inputPinCode(),
            ),
            SizedBox(
              height: 80.h,
            ),
            Center(
              child: GetBuilder<RegistryController>(
                builder: (_) {
                  return _.isFinish
                      ? arBtn(
                          fn: () {
                            registry_c.nextTo();
                          },
                          text: "下一步",
                          width: 690,
                        )
                      : arBtn(
                          fn: null,
                          text: "下一步",
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
                Text(
                  "已有账号，立即登录",
                  style: TextStyle(
                    color: Colours.app_green,
                    fontSize: 28.f,
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

  /// 输入手机号
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
                      "+${prefixList[registry_c.prefix.value]['prefix']}")),
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
                        controller: registry_c.scrollController,
                        itemBuilder: (ctx, index) => InkWell(
                          onTap: () {
                            registry_c.changePrefix(index);
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
              child: TextField(
                controller: registry_c.input1Controller,
                decoration: InputDecoration(
                  hintText: "请输入手机号",
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    fontSize: 32.f,
                    color: Colours.app_normal_grey,
                  ),
                ),
                onChanged: (String text) {
                  registry_c.inputOnchange(text, 'mobile');
                },
              ),
            ),
            SizedBox(
              width: 15.w,
            ),
            Expanded(
              child: GetBuilder<RegistryController>(
                builder: (_) {
                  return _.mobile.length > 1
                      ? Align(
                          alignment: Alignment.center,
                          child: InkWell(
                            onTap: () {
                              registry_c.clearInput(type: "mobile");
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

  // 输入验证码
  _inputPinCode() {
    return Container(
      width: 690.w,
      height: 96.h,
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
              height: 44.w,
              image: AssetImage("images/input_icon_safe.png"),
            ),
            SizedBox(
              width: 70.w,
            ),
            SizedBox(
              width: 244.w,
              child: TextField(
                maxLength: 6,
                controller: registry_c.input2Controller,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "请输入6位验证码",
                  counterText: '',
                  hintStyle: TextStyle(
                    fontSize: 32.f,
                    color: Colours.app_normal_grey,
                  ),
                  border: InputBorder.none,
                ),
                onChanged: (String text) {
                  registry_c.inputOnchange(text, 'pin');
                },
              ),
            ),
            SizedBox(
              width: 108.w,
            ),
            Expanded(
              child: InkWell(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        right: 30.w,
                      ),
                      width: 2.w,
                      height: 32.h,
                      decoration: BoxDecoration(
                        borderRadius: ArUtil.border(2),
                        color: Colours.app_green,
                      ),
                    ),
                    GetBuilder<RegistryController>(
                      id: "pin_code_timer",
                      builder: (_) {
                        return Text(
                          _.sendCount == _.secondsMax
                              ? "获取验证码"
                              : "${_.sendCount} s",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colours.app_green,
                            fontSize: 28.f,
                          ),
                        );
                      },
                    )
                  ],
                ),
                onTap: () {
                  registry_c.getPinCode();
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  // 输入密码
  _inputPassWd() {
    return Container(
      width: 690.w,
      height: 96.h,
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
                maxLength: 20,
                obscureText: true,
                decoration: InputDecoration(
                  counterText: '',
                  hintText: "请设置密码（6-20位数字及字母）",
                  hintStyle: TextStyle(
                    fontSize: 32.f,
                    color: Colours.app_normal_grey,
                  ),
                  border: InputBorder.none,
                ),
                onChanged: (String text) {
                  registry_c.pwdOnchange(text, 'pwd');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
