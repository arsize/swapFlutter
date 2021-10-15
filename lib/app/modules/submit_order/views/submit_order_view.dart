import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:raintree/app/colors/colors.dart';
import 'package:raintree/app/common/widgets/app_bar.dart';
import 'package:raintree/app/common/widgets/button.dart';
import 'package:raintree/app/utils/utils.dart';

import '../controllers/submit_order_controller.dart';

class SubmitOrderView extends GetView<SubmitOrderController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(title: "提交订单"),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxHeight: Get.height - 140.h),
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    width: Get.width,
                    color: Colors.white,
                    height: 287.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "暂无收货地址",
                          style: TextStyle(
                            fontSize: 28.f,
                            fontWeight: FontWeight.w600,
                            color: Colours.app_main,
                          ),
                        ),
                        SizedBox(height: 40.h),
                        arBtn(
                            fn: () {
                              Get.toNamed("/product-address");
                            },
                            width: 240,
                            height: 88,
                            text: "去设置"),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Container(
                    width: Get.width,
                    color: Colors.white,
                    padding: EdgeInsets.all(32.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "商品信息：",
                          style: TextStyle(
                            fontSize: 24.f,
                            color: Colours.app_normal_grey,
                          ),
                        ),
                        SizedBox(height: 16.h),
                        Row(
                          children: [
                            Image(
                              width: 160.w,
                              height: 160.w,
                              image: AssetImage("images/product_item_img.png"),
                            ),
                            SizedBox(width: 16.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "极克·KING（新国标电动车）极克…",
                                  style: TextStyle(
                                    fontSize: 32.f,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 14.f),
                                Text(
                                  "规格：经典黄",
                                  style: TextStyle(
                                    color: Colours.app_font_grey6,
                                    fontSize: 24.f,
                                  ),
                                ),
                                SizedBox(height: 14.f),
                                Text(
                                  "￥1276.00 x1",
                                  style: TextStyle(
                                    color: Colours.app_font_grey6,
                                    fontSize: 24.f,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 40.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "购买数量",
                              style: TextStyle(
                                fontSize: 28.f,
                                color: Colours.app_font_grey6,
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  alignment: Alignment.topCenter,
                                  decoration: BoxDecoration(
                                    borderRadius: ArUtil.border(6),
                                    color: Colours.app_light_grey,
                                  ),
                                  width: 48.w,
                                  height: 48.w,
                                  child: Icon(
                                    Icons.minimize,
                                    size: 15,
                                  ),
                                ),
                                SizedBox(width: 20.w),
                                Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: ArUtil.border(6),
                                    color: Colours.app_light_grey,
                                  ),
                                  width: 48.w,
                                  height: 48.w,
                                  child: Text("1"),
                                ),
                                SizedBox(width: 20.w),
                                Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: ArUtil.border(6),
                                    color: Colours.app_light_grey,
                                  ),
                                  width: 48.w,
                                  height: 48.w,
                                  child: Icon(
                                    Icons.add,
                                    size: 15,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 49.h),
                        Row(
                          children: [
                            Text(
                              "配送方式",
                              style: TextStyle(
                                fontSize: 28.f,
                                color: Colours.app_font_grey6,
                              ),
                            ),
                            SizedBox(width: 40.w),
                            Text(
                              "快递免邮",
                              style: TextStyle(
                                fontSize: 28.f,
                                color: Colours.app_main,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 49.h),
                        Row(
                          children: [
                            Text(
                              "订单备注",
                              style: TextStyle(
                                fontSize: 28.f,
                                color: Colours.app_font_grey6,
                              ),
                            ),
                            SizedBox(width: 40.w),
                            Expanded(
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  hintText: "选填",
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(
                                    fontSize: 30.f,
                                    color: Colours.app_normal_grey,
                                  ),
                                ),
                                onChanged: (String text) {},
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  color: Colours.app_bg_grey,
                ),
              ),
              Container(
                width: Get.width,
                height: 112.h,
                color: Colors.white,
                padding: EdgeInsets.only(
                  top: 12.w,
                  bottom: 12.w,
                  left: 32.w,
                  right: 32.w,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "合计：￥1276.00",
                      style: TextStyle(
                        fontSize: 32.f,
                        fontWeight: FontWeight.w600,
                        color: Colours.app_orange_red,
                      ),
                    ),
                    arBtn(
                        fn: () {
                          Get.offNamed("/pay-order");
                        },
                        width: 280,
                        height: 88,
                        text: "提交订单")
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
