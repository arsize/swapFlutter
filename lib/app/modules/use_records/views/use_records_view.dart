/*
 * @Author: Arsize 
 * @Date: 2021-10-23 14:31:50 
 * @Describe: 使用记录
 */

library use_records_view;

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:raintree/app/colors/colors.dart';
import 'package:raintree/app/common/methods/normal.dart';
import 'package:raintree/app/common/widgets/app_bar.dart';
import 'package:raintree/app/utils/utils.dart';
import '../controllers/use_records_controller.dart';

part './widgets/use_records_item.dart';

class UseRecordsView extends GetView<UseRecordsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(title: "使用记录"),
      body: Container(
        padding: EdgeInsets.only(
          bottom: 20.h,
          left: 32.w,
          right: 32.w,
          top: 32.h,
        ),
        child: GetBuilder<UseRecordsController>(builder: (_) {
          return (_.exchangeRecord.data?.records != null &&
                  _.exchangeRecord.data!.records!.isNotEmpty)
              ? ListView(
                  children: _.exchangeRecord.data!.records!
                      .map(
                        (e) => Container(
                          width: 686.w,
                          margin: EdgeInsets.only(bottom: 30.h),
                          child: UseRecordsItem(
                            useType: e.useType,
                            exchangeStatus: e.exchangeStatus,
                            chargingStatus: e.chargingStatus,
                            money: e.money,
                            orderNo: e.orderNo,
                            ctime: e.ctime,
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
                        "暂无使用记录",
                        style: TextStyle(
                          fontSize: 28.f,
                          color: Colours.app_font_grey,
                        ),
                      )
                    ],
                  ),
                );
        }),
      ),
    );
  }
}
