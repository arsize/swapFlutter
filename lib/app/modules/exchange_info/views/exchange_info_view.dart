library exchange_info_view;

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:raintree/app/colors/colors.dart';
import 'package:raintree/app/utils/utils.dart';
import 'package:raintree/app/common/widgets/common_wigets.dart';

import '../controllers/exchange_info_controller.dart';

// part
part './widgets/exchange_rules.dart';
part './widgets/cabinet_info.dart';
part './widgets/cabinet_round.dart';
part './widgets/current_package.dart';

class ExchangeInfoView extends GetView<ExchangeInfoController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(title: "换电"),
      body: Container(
        width: Get.width,
        color: Colours.app_F5_grey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                CabinetInfo(),
                SizedBox(
                  height: 24.h,
                ),
                CabinetRound(),
                SizedBox(
                  height: 24.h,
                ),
                CurrentPackage(),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0.0, 0.2),
                    blurRadius: 10,
                    spreadRadius: 1,
                  )
                ],
              ),
              padding: EdgeInsets.only(
                top: 12.h,
                bottom: 12.h,
                left: 32.w,
                right: 32.w,
              ),
              height: 112.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Text(
                          "0.00元",
                          style: TextStyle(
                            color: Colours.app_orange_red,
                            fontSize: 32.f,
                          ),
                        ),
                        SizedBox(width: 21.w),
                        InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              builder: (BuildContext context) {
                                return ExchangeRules();
                              },
                            );
                          },
                          child: Icon(
                            Icons.help,
                            color: Colours.app_normal_grey,
                            size: 35.f,
                          ),
                        )
                      ],
                    ),
                  ),
                  arBtn(
                    fn: controller.beginExchange,
                    width: 280,
                    height: 88,
                    text: "开始换电",
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
