/*
 * @Author: Arsize 
 * @Date: 2021-09-06 16:04:58 
 * @Describe: 商城
 */
library shop_view;

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import 'package:get/get.dart';
import 'package:raintree/app/colors/colors.dart';
import 'package:raintree/app/common/widgets/app_bar.dart';
import 'package:raintree/app/utils/utils.dart';

import '../controllers/shop_controller.dart';

part './widgets/product_item.dart';

class ShopView extends GetView<ShopController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(title: "商城"),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 0,
            child: Container(
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
                autoplay: true,
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
          ),
          Positioned(
            top: 540.h,
            bottom: 0,
            child: Container(
              width: Get.width,
              padding: EdgeInsets.all(32.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.w),
                  topRight: Radius.circular(30.w),
                ),
              ),
              child: AnimationLimiter(
                child: GridView.builder(
                  itemCount: 10,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 30.w,
                    crossAxisSpacing: 30.w,
                    childAspectRatio: 0.75,
                  ),
                  itemBuilder: (context, index) {
                    return AnimationConfiguration.staggeredGrid(
                      columnCount: 2,
                      position: index,
                      duration: Duration(milliseconds: 375),
                      child: SlideAnimation(
                        verticalOffset: 50.0,
                        child: FadeInAnimation(
                          child: InkWell(
                            onTap: () {
                              Get.toNamed("/shop-product-detail");
                            },
                            child: ProductItem(),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
