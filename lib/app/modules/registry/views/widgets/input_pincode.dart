/*
 * @Author: Arsize 
 * @Date: 2021-09-03 10:10:56 
 * @Describe: 验证码输入框
 */

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swapapp/app/colors/colors.dart';
import 'package:swapapp/app/modules/registry/controllers/registry_controller.dart';
import 'package:swapapp/app/utils/utils.dart';

class InputPinCode extends StatelessWidget {
  const InputPinCode({Key? key}) : super(key: key);

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
                controller: ctrl.pinInputController,
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
                  ctrl.step1Onchange(text, 'pin');
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
                  ctrl.getPinCode();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
