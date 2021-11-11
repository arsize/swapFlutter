import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:raintree/app/colors/colors.dart';
import 'package:raintree/app/common/widgets/common_wigets.dart';
import 'package:raintree/app/utils/utils.dart';
import '../controllers/admin_unbind_battery_controller.dart';

class AdminUnbindBatteryView extends GetView<AdminUnbindBatteryController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(title: "解绑电池"),
      body: Container(
        width: Get.width,
        padding: EdgeInsets.only(top: 102.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  "请扫描用户二维码",
                  style: TextStyle(
                    fontSize: 32.f,
                    fontWeight: FontWeight.w600,
                    color: Colours.app_main,
                  ),
                ),
                Text(
                  "或输入用户账号解绑电池",
                  style: TextStyle(
                    fontSize: 32.f,
                    color: Colours.app_main,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
            SizedBox(height: 40.h),
            Image(
              width: 445.w,
              height: 379.w,
              image: AssetImage(
                "images/admin_bind_combo.png",
              ),
            ),
            SizedBox(height: 100.h),
            Column(
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    width: 400.w,
                    height: 100.h,
                    decoration: BoxDecoration(
                      borderRadius: ArUtil.border(20),
                      color: Colours.app_main,
                    ),
                    child: Text(
                      "扫码解绑",
                      style: TextStyle(
                        fontSize: 32.f,
                        color: Colours.app_yellow,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 32.h),
                InkWell(
                  onTap: () {
                    Get.offNamed("/unbind-battery");
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 400.w,
                    height: 100.h,
                    decoration: BoxDecoration(
                      borderRadius: ArUtil.border(20),
                      color: Colours.app_F1_grey,
                    ),
                    child: Text(
                      "手动输入用户账号",
                      style: TextStyle(
                        fontSize: 32.f,
                        color: Colours.app_main,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
