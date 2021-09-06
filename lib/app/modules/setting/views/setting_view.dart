import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:swapapp/app/colors/colors.dart';
import 'package:swapapp/app/common/widgets/common_wigets.dart';
import 'package:swapapp/app/modules/setting/views/widgets/base_info_panel.dart';
import 'package:swapapp/app/utils/utils.dart';

import '../controllers/setting_controller.dart';

class SettingView extends GetView<SettingController> {
  @override
  Widget build(BuildContext context) {
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
                  Navigator.of(context).pushNamed("change_mobile");
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
                          Text(
                            "130000000",
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
                Navigator.of(context).pushNamed("change_nickname");
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
                          Text(
                            "陈龙",
                            style: TextStyle(
                              color: Colours.app_font_grey6,
                              fontSize: 28.w,
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
            Padding(
              padding: EdgeInsets.all(30.w),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed("my_address");
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
                Navigator.of(context).pushNamed("multilingual");
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
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return ArDialog(
                      type: "confirm",
                      content: "确认要退出账号吗？",
                      fn1: () {
                        Navigator.of(context).pop();
                      },
                      fn2: () {},
                    );
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
