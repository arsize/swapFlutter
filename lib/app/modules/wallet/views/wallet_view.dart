/*
 * @Author: Arsize 
 * @Date: 2021-09-28 18:29:30 
 * @Describe:钱包 
 */
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:raintree/app/colors/colors.dart';
import 'package:raintree/app/common/widgets/app_bar.dart';
import 'package:raintree/app/utils/utils.dart';

import '../controllers/wallet_controller.dart';

class WalletView extends GetView<WalletController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(title: "钱包"),
      body: Padding(
        padding: EdgeInsets.only(
          top: 40.h,
          left: 32.w,
          right: 32.w,
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colours.app_text_light.withOpacity(0.3),
                borderRadius: ArUtil.border(8),
              ),
              width: double.infinity,
              height: 80.w,
              child: Padding(
                padding: EdgeInsets.only(
                  top: 19.w,
                  bottom: 19.w,
                  left: 20.w,
                  right: 20.w,
                ),
                child: Text(
                  "温馨提示：充值余额不可提现。",
                  style: TextStyle(
                    fontSize: 28.f,
                    color: Colours.app_font_grey6,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 28.h,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Image(
                  width: Get.width,
                  height: 315.h,
                  image: AssetImage("images/wallet_bg.png"),
                ),
                Padding(
                  padding: EdgeInsets.all(32.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "余额（元）",
                            style: TextStyle(
                              fontSize: 28.f,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: Adapt.height(16),
                          ),
                          Obx(
                            () => Text(
                              controller.walletMoney.value.toString(),
                              style: TextStyle(
                                fontSize: 56.f,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed("/put-money");
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 180.w,
                          height: 88.w,
                          decoration: BoxDecoration(
                            color: Colours.app_black,
                            borderRadius: ArUtil.border(
                              75.w,
                            ),
                          ),
                          child: Text(
                            "去充值",
                            style: TextStyle(
                              fontSize: 32.f,
                              color: Colours.app_yellow,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 59.h,
            ),
            InkWell(
              onTap: () {
                Get.toNamed("/records");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Image(
                          width: 32.w,
                          height: 32.w,
                          image: AssetImage("images/wallet_menuicon.png"),
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        Text(
                          "消费明细",
                          style: TextStyle(
                            fontSize: 30.f,
                            color: Colours.app_main,
                          ),
                        )
                      ],
                    ),
                  ),
                  Image(
                    width: 32.w,
                    height: 32.w,
                    image: AssetImage("images/line_rightrow.png"),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
