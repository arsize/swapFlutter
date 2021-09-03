/*
 * @Author: Arsize 
 * @Date: 2021-09-03 10:08:04 
 * @Describe: 密码输入框
 */

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swapapp/app/colors/colors.dart';
import 'package:swapapp/app/modules/registry/controllers/registry_controller.dart';
import 'package:swapapp/app/utils/utils.dart';

class InputPassWd extends StatelessWidget {
  const InputPassWd({Key? key, required this.type}) : super(key: key);
  final String type;

  @override
  Widget build(BuildContext context) {
    final RegistryController ctrl = Get.find();
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
              width: 40.w,
            ),
            Expanded(
              child: TextField(
                controller: type == 'pwd'
                    ? ctrl.pwdInputController
                    : ctrl.repwdInputController,
                maxLength: 20,
                obscureText: true,
                decoration: InputDecoration(
                  counterText: '',
                  hintText: type == 'pwd' ? "请设置密码（6-20位数字及字母）" : "请再次输入密码",
                  hintStyle: TextStyle(
                    fontSize: 30.f,
                    color: Colours.app_normal_grey,
                  ),
                  border: InputBorder.none,
                ),
                onChanged: (String text) {
                  ctrl.step2Onchange(text, type);
                },
              ),
            ),
            GetBuilder<RegistryController>(
              builder: (_) {
                return (type == 'pwd' ? _.pwd.length : _.repwd.length) > 1
                    ? Align(
                        alignment: Alignment.center,
                        child: InkWell(
                          onTap: () {
                            ctrl.clearInput(type: type);
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
            SizedBox(
              width: 40.w,
            )
          ],
        ),
      ),
    );
  }
}
