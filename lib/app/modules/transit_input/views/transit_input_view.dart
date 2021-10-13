library transit_input_view;

import 'package:flutter/material.dart';
import 'package:flutter_verification_box/verification_box.dart';

import 'package:get/get.dart';
import 'package:raintree/app/colors/colors.dart';
import 'package:raintree/app/common/widgets/common_wigets.dart';
import 'package:raintree/app/utils/utils.dart';

import '../controllers/transit_input_controller.dart';

class TransitInputView extends GetView<TransitInputController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(title: "输入电柜ID"),
      body: Padding(
        padding: EdgeInsets.all(32.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "电柜ID",
                  style: TextStyle(
                    color: Colours.app_main,
                    fontSize: 30.f,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed("/bind-contact");
                  },
                  child: Text(
                    "切换扫码",
                    style: TextStyle(
                      color: Colours.app_green,
                      fontSize: 28.f,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 14.h,
            ),
            Container(
              height: 90.w,
              child: VerificationBox(
                count: 6,
                borderWidth: 1,
                borderRadius: 12,
                unfocus: false,
                focusBorderColor: Colours.app_yellow,
                onSubmitted: controller.onSubmitted,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Image(
              width: 686.w,
              height: 208.h,
              image: AssetImage("images/input_sub_info.png"),
            ),
            SizedBox(
              height: 16.h,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 16.h),
                width: double.infinity,
                color: Colours.app_bg_grey,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "历史记录",
                          style: TextStyle(
                            fontSize: 28.f,
                            color: Colours.app_normal_grey,
                          ),
                        ),
                        Icon(
                          Icons.delete,
                          size: 35.f,
                          color: Colours.app_normal_grey,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 32.h,
                    ),
                    Wrap(
                      alignment: WrapAlignment.spaceBetween,
                      spacing: 22.w,
                      runSpacing: 22.h,
                      children: controller.history
                          .map(
                            (e) => Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: ArUtil.border(6),
                              ),
                              alignment: Alignment.center,
                              width: 214.w,
                              height: 80.h,
                              child: Text(
                                e.toString(),
                                style: TextStyle(
                                  color: Colours.app_normal_grey,
                                  fontSize: 28.f,
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
