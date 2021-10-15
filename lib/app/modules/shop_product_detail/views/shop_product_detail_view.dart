library shop_product_detail;

import 'dart:ui';

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:raintree/app/colors/colors.dart';
import 'package:raintree/app/common/widgets/app_bar.dart';
import 'package:raintree/app/common/widgets/button.dart';
import 'package:raintree/app/utils/utils.dart';
import 'package:url_launcher/url_launcher.dart';

import '../controllers/shop_product_detail_controller.dart';

part './widgets/product_info.dart';
part './widgets/safeguard.dart';
part './widgets/parameter.dart';
part './widgets/select_product.dart';

class ShopProductDetailView extends GetView<ShopProductDetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(
        title: "商城",
      ),
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Container(
                      width: Get.width,
                      height: 550.h,
                      child: Swiper(
                        itemBuilder: (BuildContext context, int index) {
                          return Image(
                            fit: BoxFit.cover,
                            image: AssetImage("images/shop_car_item.png"),
                          );
                        },
                        itemCount: 3,
                        pagination: SwiperPagination(
                          builder: DotSwiperPaginationBuilder(
                            size: 6.0,
                            activeSize: 6.0,
                            space: 10.0,
                            activeColor: Colours.app_green,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      width: Get.width,
                      padding: EdgeInsets.only(
                        top: 20.h,
                        bottom: 20.h,
                        left: 30.w,
                        right: 30.w,
                      ),
                      child: Column(
                        children: [
                          ProductInfo(),
                          SizedBox(height: 152.h),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(
                top: 16.h,
                bottom: 16.h,
                left: 30.w,
                right: 30.w,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colours.app_E1_grey,
                    offset: Offset(0.0, 3.0),
                    blurRadius: 5,
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "2999元",
                    style: TextStyle(
                      color: Colours.app_orange_red,
                      fontSize: 30.f,
                    ),
                  ),
                  SizedBox(width: 24.w),
                  Text(
                    "3299元",
                    style: TextStyle(
                      fontSize: 22.f,
                      decoration: TextDecoration.lineThrough,
                      color: Colours.app_normal_grey,
                    ),
                  ),
                  SizedBox(width: 62.w),
                  InkWell(
                    onTap: () {
                      launch("tel://xxx");
                    },
                    child: Column(
                      children: [
                        Image(
                          width: 40.w,
                          height: 40.w,
                          image: AssetImage(
                            "images/product_kf_icon.png",
                          ),
                        ),
                        Text(
                          "联系客服",
                          style: TextStyle(
                            fontSize: 20.f,
                            color: Colours.app_main,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 59.w),
                  arBtn(
                      fn: () {
                        // Get.toNamed("submit-order");
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: false,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                          ),
                          builder: (BuildContext context) {
                            return SelectProduct();
                          },
                        );
                      },
                      width: 280,
                      height: 88,
                      text: "我想要")
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
