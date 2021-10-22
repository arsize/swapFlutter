library pay_combo_view;

import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import 'package:get/get.dart';
import 'package:raintree/app/colors/colors.dart';
import 'package:raintree/app/common/widgets/app_bar.dart';
import 'package:raintree/app/common/widgets/button.dart';
import 'package:raintree/app/utils/utils.dart';
import '../controllers/pay_combo_controller.dart';

part './widgets/pay_combo_item.dart';

class PayComboView extends GetView<PayComboController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(title: "购买套餐"),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: Get.height - 140.h,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(32.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "套餐换电更划算，低至2.97元/次！",
                      style: TextStyle(
                        fontSize: 28.f,
                        color: Colours.app_main,
                      ),
                    ),
                    SizedBox(height: 40.h),
                    AnimationLimiter(
                      child: GetBuilder<PayComboController>(
                        builder: (_) => (_.comoModel.data != null &&
                                _.comoModel.data!.isNotEmpty)
                            ? Column(
                                children:
                                    AnimationConfiguration.toStaggeredList(
                                  duration: Duration(milliseconds: 275),
                                  childAnimationBuilder: (widget) =>
                                      SlideAnimation(
                                    verticalOffset: 50.0,
                                    child: FadeInAnimation(
                                      child: widget,
                                    ),
                                  ),
                                  children: (_.show.value ||
                                          _.comoModel.data!.length < 3)
                                      ? _.comoModel.data!
                                          .map((e) => PayComboItem(
                                                itemId: e.id,
                                                name: e.name,
                                                originalPrice: e.originalPrice,
                                                price: e.price,
                                                num: e.num,
                                              ))
                                          .toList()
                                      : _.comoModel.data!
                                          .sublist(0, 3)
                                          .map((e) => PayComboItem(
                                                itemId: e.id,
                                                name: e.name,
                                                originalPrice: e.originalPrice,
                                                price: e.price,
                                                num: e.num,
                                              ))
                                          .toList(),
                                ),
                              )
                            : Align(
                                alignment: Alignment.center,
                                child: Column(
                                  children: [
                                    Image(
                                      width: 320.w,
                                      height: 320.w,
                                      image: AssetImage(
                                        "images/no_combo.png",
                                      ),
                                    ),
                                    Text(
                                      "暂无可购买套餐",
                                      style: TextStyle(
                                        fontSize: 28.f,
                                        color: Colours.app_font_grey,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 50.h,
                                    )
                                  ],
                                ),
                              ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    GetBuilder<PayComboController>(builder: (_) {
                      return Offstage(
                        offstage: (_.comoModel.data == null ||
                            _.comoModel.data!.length < 4),
                        child: InkWell(
                          onTap: () {
                            controller.showMore();
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                _.show.value ? "收起" : "查看更多",
                                style: TextStyle(
                                  fontSize: 28.f,
                                  color: Colours.app_green,
                                ),
                              ),
                              Icon(
                                _.show.value
                                    ? Icons.keyboard_arrow_up
                                    : Icons.keyboard_arrow_down,
                                color: Colours.app_green,
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                    SizedBox(height: 24.h),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 120.w,
                              height: 1.h,
                              color: Colours.app_main,
                            ),
                            SizedBox(width: 24.w),
                            Text(
                              "套餐说明",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 28.f,
                                color: Colours.app_main,
                              ),
                            ),
                            SizedBox(width: 24.w),
                            Container(
                              width: 120.w,
                              height: 1.h,
                              color: Colours.app_main,
                            ),
                          ],
                        ),
                        SizedBox(height: 24.h),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "1、各城市套餐不通用，若更换城市需重新购买套餐；",
                              style: TextStyle(
                                fontSize: 24.f,
                                color: Colours.app_font_grey6,
                              ),
                            ),
                            SizedBox(height: 8.h),
                            Text(
                              "2、换电套餐支持叠加购买，第一张套餐卡到期失效后第二张套餐卡将自动生效。有效期为生效日0时至到期日的24时，如购买了20次/30天的套餐于4月1日0时生效，则在4月30日24时到期失效（清零）；",
                              style: TextStyle(
                                fontSize: 24.f,
                                color: Colours.app_font_grey6,
                              ),
                            ),
                            SizedBox(height: 8.h),
                            Text(
                              "3、套餐一旦购买成功，不支持更换或退款。",
                              style: TextStyle(
                                fontSize: 24.f,
                                color: Colours.app_font_grey6,
                              ),
                            ),
                            SizedBox(height: 8.h),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                child: Container(
                  height: 112.h,
                  padding: EdgeInsets.only(left: 32.w, right: 32.w),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Obx(
                        () => Text(
                          controller.money.value.toString() + '元',
                          style: TextStyle(
                            fontSize: 32.f,
                            color: Colours.app_orange_red,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      arBtn(
                        width: 280,
                        height: 88,
                        fn: () {
                          controller.submitTo();
                        },
                        text: "确认购买",
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
