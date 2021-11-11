import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:raintree/app/colors/colors.dart';
import 'package:raintree/app/common/methods/normal.dart';
import 'package:raintree/app/common/widgets/common_wigets.dart';

import '../controllers/unbind_battery_controller.dart';
import 'package:raintree/app/utils/utils.dart';

class UnbindBatteryView extends GetView<UnbindBatteryController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(title: "解绑电池"),
      body: Stack(
        alignment: Alignment.center,
        fit: StackFit.expand,
        children: [
          Container(
            padding: EdgeInsets.all(32.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    "请录入用户账号",
                    style: TextStyle(
                      fontSize: 34.f,
                      color: Colours.app_main,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 24.h),
                TextField(
                  controller: controller.userController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(
                      top: 5.w,
                      bottom: 5.w,
                      left: 30.w,
                      right: 30.w,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(color: Colours.app_DB_grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(color: Colours.app_DB_grey),
                    ),
                    hintText: "请输入用户账号",
                    hintStyle: TextStyle(
                      fontSize: 30.f,
                      color: Colours.app_normal_grey,
                    ),
                  ),
                  onChanged: (String text) {
                    controller.inputOnchange(text);
                  },
                ),
                GetBuilder<UnbindBatteryController>(builder: (_) {
                  return Offstage(
                    offstage: _.adminUserInfo.data == null,
                    child: Container(
                      width: 686.w,
                      padding:
                          EdgeInsets.only(top: 40.h, left: 32.w, right: 32.w),
                      color: Colours.app_F7A_grey,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 225.w,
                                child: Text(
                                  "用户昵称：",
                                  style: TextStyle(
                                    fontSize: 28.f,
                                    color: Colours.app_font_grey,
                                  ),
                                ),
                              ),
                              Text(
                                _.adminUserInfo.data?.userNickname ?? '--',
                                style: TextStyle(
                                  fontSize: 28.f,
                                  color: Colours.app_main,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 16.h),
                          Row(
                            children: [
                              Container(
                                width: 225.w,
                                child: Text(
                                  "地区名称：",
                                  style: TextStyle(
                                    fontSize: 28.f,
                                    color: Colours.app_font_grey,
                                  ),
                                ),
                              ),
                              Text(
                                _.adminUserInfo.data?.regionName ?? '--',
                                style: TextStyle(
                                  fontSize: 28.f,
                                  color: Colours.app_main,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 16.h),
                          Row(
                            children: [
                              Container(
                                width: 225.w,
                                child: Text(
                                  "电池绑定状态：",
                                  style: TextStyle(
                                    fontSize: 28.f,
                                    color: Colours.app_font_grey,
                                  ),
                                ),
                              ),
                              Text(
                                _.adminUserInfo.data?.bindType == 0
                                    ? "未绑定"
                                    : "已绑定",
                                style: TextStyle(
                                  fontSize: 28.f,
                                  color: Colours.app_main,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 16.h),
                          Offstage(
                            offstage: _.adminUserInfo.data?.bindType == 0,
                            child: Row(
                              children: [
                                Container(
                                  width: 225.w,
                                  child: Text(
                                    "电池型号：",
                                    style: TextStyle(
                                      fontSize: 28.f,
                                      color: Colours.app_font_grey,
                                    ),
                                  ),
                                ),
                                Text(
                                  _.adminUserInfo.data?.typeName ?? '--',
                                  style: TextStyle(
                                    fontSize: 28.f,
                                    color: Colours.app_main,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 16.h),
                          Offstage(
                            offstage: _.adminUserInfo.data?.bindType == 0,
                            child: Row(
                              children: [
                                Container(
                                  width: 225.w,
                                  child: Text(
                                    "电池SN码：",
                                    style: TextStyle(
                                      fontSize: 28.f,
                                      color: Colours.app_font_grey,
                                    ),
                                  ),
                                ),
                                Text(
                                  _.adminUserInfo.data?.batterySn ?? '--',
                                  style: TextStyle(
                                    fontSize: 28.f,
                                    color: Colours.app_main,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 16.h),
                          Offstage(
                            offstage: _.adminUserInfo.data?.bindType == 0,
                            child: Row(
                              children: [
                                Container(
                                  width: 225.w,
                                  child: Text(
                                    "绑定时间：",
                                    style: TextStyle(
                                      fontSize: 28.f,
                                      color: Colours.app_font_grey,
                                    ),
                                  ),
                                ),
                                Text(
                                  formateTime(_.adminUserInfo.data?.bindTime),
                                  style: TextStyle(
                                    fontSize: 28.f,
                                    color: Colours.app_main,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                })
              ],
            ),
          ),
          Positioned(
            bottom: 32.h,
            child: Container(
              padding: EdgeInsets.only(bottom: 32.h),
              child: GetBuilder<UnbindBatteryController>(
                builder: (_) {
                  return _.isFinish
                      ? arBtn(
                          width: 686,
                          height: 100,
                          text: "确认解绑",
                          fn: () {
                            controller.submitTo();
                          },
                        )
                      : arBtn(
                          width: 686,
                          height: 100,
                          text: "确认解绑",
                          fn: null,
                        );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
