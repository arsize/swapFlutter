library user_combo_view;

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:raintree/app/colors/colors.dart';
import 'package:raintree/app/common/widgets/common_wigets.dart';
import 'package:raintree/app/utils/utils.dart';
import '../controllers/user_combo_controller.dart';

part './widgets/combo_item.dart';

class UserComboView extends GetView<UserComboController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(title: "我的套餐"),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 178.h),
            child: GetBuilder<UserComboController>(
              builder: (_) {
                if (_.combo.data != null) {
                  return _.combo.data!.isNotEmpty
                      ? ListView(
                          children: _.combo.data!
                              .map(
                                (e) => Container(
                                  width: Get.width,
                                  margin: EdgeInsets.only(bottom: 30.h),
                                  child: ProductListItem(
                                    frequencyCardType: e.frequencyCardType,
                                  ),
                                ),
                              )
                              .toList(),
                        )
                      : Container(
                          margin: EdgeInsets.only(top: 120.h),
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              Image(
                                width: 320.w,
                                height: 320.w,
                                image: AssetImage("images/no_recode.png"),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                "暂未购买套餐",
                                style: TextStyle(
                                  fontSize: 28.f,
                                  color: Colours.app_font_grey,
                                ),
                              )
                            ],
                          ),
                        );
                } else {
                  return Container(
                    margin: EdgeInsets.only(top: 120.h),
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Image(
                          width: 320.w,
                          height: 320.w,
                          image: AssetImage("images/no_combo.png"),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          "暂未购买套餐",
                          style: TextStyle(
                            fontSize: 28.f,
                            color: Colours.app_font_grey,
                          ),
                        )
                      ],
                    ),
                  );
                }
              },
            ),
          ),
          Positioned(
            bottom: 40.h,
            left: 32.w,
            child: GetBuilder<UserComboController>(builder: (_) {
              return (_.combo.data == null ||
                      (_.combo.data != null && _.combo.data!.isEmpty))
                  ? Container(
                      child: arBtn(
                        fn: () {
                          Get.toNamed("pay-combo");
                        },
                        width: 686,
                        text: "去购买",
                      ),
                    )
                  : Container(
                      child: arBtn(
                        fn: () {
                          Get.toNamed("pay-combo");
                        },
                        width: 686,
                        text: "购买更多套餐",
                      ),
                    );
            }),
          )
        ],
      ),
    );
  }
}
