library setting_view;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:raintree/app/colors/colors.dart';
import 'package:raintree/app/common/widgets/common_wigets.dart';
import 'package:raintree/app/modules/my/controllers/my_controller.dart';
import 'package:raintree/app/store/store.dart';
import 'package:raintree/app/utils/utils.dart';

import '../controllers/setting_controller.dart';

part './widgets/base_info_panel.dart';

class SettingView extends GetView<SettingController> {
  @override
  Widget build(BuildContext context) {
    final StoreController store = Get.find();
    final MyController my = Get.find();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: defaultAppBar(title: "设置"),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            BaseInfoPanel(),
            Container(
              color: Colours.app_bg_grey,
              height: 1,
              width: double.infinity,
            ),
            Padding(
              padding: EdgeInsets.all(30.w),
              child: InkWell(
                onTap: () {
                  Get.toNamed("/edit-mobile");
                },
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "修改手机号",
                        style: TextStyle(fontSize: 28.f),
                      ),
                      Row(
                        children: [
                          GetBuilder<StoreController>(
                            builder: (_) => Text(
                              _.loginData.account ?? '--',
                              style: TextStyle(
                                color: Colours.app_font_grey6,
                                fontSize: 28.f,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 21.w,
                          ),
                          Image(
                            width: 32.w,
                            height: 32.w,
                            image: AssetImage("images/line_rightrow.png"),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              color: Colours.app_bg_grey,
              height: 1,
              width: double.infinity,
            ),
            InkWell(
              onTap: () {
                Get.toNamed("/edit-nickname");
              },
              child: Padding(
                padding: EdgeInsets.all(30.w),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "修改昵称",
                        style: TextStyle(fontSize: 28.f),
                      ),
                      Row(
                        children: [
                          GetBuilder<StoreController>(builder: (_) {
                            return Text(
                              _.loginData.userNickname ??
                                  _.loginData.uid!.substring(0, 8),
                              style: TextStyle(
                                color: Colours.app_font_grey6,
                                fontSize: 28.w,
                              ),
                            );
                          }),
                          SizedBox(
                            width: 21.w,
                          ),
                          Image(
                            width: 32.w,
                            height: 32.w,
                            image: AssetImage("images/line_rightrow.png"),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              color: Colours.app_bg_grey,
              height: 1,
              width: double.infinity,
            ),
            Padding(
              padding: EdgeInsets.all(30.w),
              child: InkWell(
                onTap: () {
                  Get.toNamed("/product-address");
                },
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "收获地址",
                        style: TextStyle(fontSize: 28.f),
                      ),
                      Row(
                        children: [
                          Text(
                            "修改、添加",
                            style: TextStyle(
                              color: Colours.app_font_grey6,
                              fontSize: 28.f,
                            ),
                          ),
                          SizedBox(
                            width: 21.w,
                          ),
                          Image(
                            width: 32.w,
                            height: 32.w,
                            image: AssetImage("images/line_rightrow.png"),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              color: Colours.app_bg_grey,
              height: 1,
              width: double.infinity,
            ),
            InkWell(
              onTap: () {
                Get.toNamed("/multilingual");
              },
              child: Padding(
                padding: EdgeInsets.all(28.w),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "多语言",
                        style: TextStyle(fontSize: 28.f),
                      ),
                      Row(
                        children: [
                          Text(
                            "中文",
                            style: TextStyle(
                              color: Colours.app_font_grey6,
                              fontSize: 30.f,
                            ),
                          ),
                          SizedBox(
                            width: 21.w,
                          ),
                          Image(
                            width: 32.w,
                            height: 32.w,
                            image: AssetImage("images/line_rightrow.png"),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 60.h,
              color: Colours.app_bg_grey,
            ),
            InkWell(
              onTap: () {
                arDialog(
                  context: context,
                  content: "确认要退出账号吗？",
                  fn1: () {
                    Navigator.of(context).pop();
                  },
                  fn2: () {
                    store.logout();
                    Navigator.of(context).pop();
                  },
                );
              },
              child: Container(
                alignment: Alignment.center,
                height: 100.h,
                color: Colors.white,
                child: Text(
                  "退出登录",
                  style: TextStyle(
                    fontSize: 30.f,
                    color: Colours.app_main,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                color: Colours.app_bg_grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
