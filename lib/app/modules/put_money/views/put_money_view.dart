/*
 * @Author: Arsize 
 * @Date: 2021-10-23 11:02:33 
 * @Describe: 余额充值
 */
library put_money_view;

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:raintree/app/colors/colors.dart';
import 'package:raintree/app/common/widgets/app_bar.dart';
import 'package:raintree/app/modules/wallet/controllers/wallet_controller.dart';
import 'package:raintree/app/utils/utils.dart';

import '../controllers/put_money_controller.dart';

part './widgets/money_list.dart';

class PutMoneyView extends GetView<PutMoneyController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(
        title: "余额充值",
      ),
      body: Stack(
        children: [
          Container(
            width: Get.width,
            color: Colours.app_bg_grey,
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(32.w),
              height: 562.h,
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "选择充值金额",
                        style: TextStyle(
                          fontSize: 32.f,
                          color: Colours.app_font_grey,
                        ),
                      ),
                      GetBuilder<WalletController>(builder: (_) {
                        return Text(
                          "当前余额：${_.walletMoney.value.toString()}元",
                          style: TextStyle(
                            fontSize: 28.f,
                            color: Colours.app_font_grey,
                          ),
                        );
                      })
                    ],
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Wrap(
                    spacing: 20.w,
                    runSpacing: 28.h,
                    children: [
                      MoneyList(money: "100"),
                      MoneyList(money: "50"),
                      MoneyList(money: "20"),
                      MoneyList(money: "10"),
                      MoneyList(money: "5"),
                      MoneyList(money: "0.1"),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 150.h,
            child: Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GetBuilder<PutMoneyController>(builder: (_) {
                        return InkWell(
                          onTap: () {
                            _.changeHasRead();
                          },
                          child: _.hasRead
                              ? Image(
                                  width: 32.w,
                                  height: 32.w,
                                  image: AssetImage("images/put_check_yes.png"),
                                )
                              : Image(
                                  width: 32.w,
                                  height: 32.w,
                                  image:
                                      AssetImage("images/put_check_none.png"),
                                ),
                        );
                      }),
                      SizedBox(width: 16.w),
                      Row(
                        children: [
                          Text(
                            "我已认真阅读并同意",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 24.f,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Get.toNamed("/agreement?type=charge");
                            },
                            child: Text(
                              "《充值协议》",
                              style: TextStyle(
                                color: Colours.app_green,
                                fontSize: 24.f,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 13.h,
                  ),
                  Text(
                    "一经充值，不支持退款、提现，请合理选择充值金额",
                    style: TextStyle(
                      fontSize: 24.f,
                      color: Colours.app_normal_grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0.0, 15.0), //阴影xy轴偏移量
                    blurRadius: 15.0, //阴影模糊程度
                    spreadRadius: 1.0 //阴影扩散程度
                    ),
              ]),
              height: 112.h,
              padding: EdgeInsets.only(
                left: 32.w,
                right: 32.w,
                top: 12.h,
                bottom: 12.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GetBuilder<PutMoneyController>(builder: (_) {
                    return Text(
                      "${_.selectMoney}元",
                      style: TextStyle(
                        color: Colours.app_orange_red,
                        fontSize: 32.f,
                      ),
                    );
                  }),
                  InkWell(
                    onTap: () {
                      Get.offNamed("/payment?money=${controller.selectMoney}");
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 280.w,
                      height: 88.w,
                      decoration: BoxDecoration(
                        color: Colours.app_main,
                        borderRadius: ArUtil.border(15),
                      ),
                      child: Text(
                        "立即充值",
                        style: TextStyle(
                          fontSize: 32.f,
                          color: Colours.app_yellow,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
