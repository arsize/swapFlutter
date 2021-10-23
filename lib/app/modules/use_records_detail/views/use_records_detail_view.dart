library use_records_detail_view;

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:raintree/app/colors/colors.dart';
import 'package:raintree/app/common/widgets/app_bar.dart';
import 'package:raintree/app/utils/utils.dart';

import '../controllers/use_records_detail_controller.dart';
part './widgets/records_item.dart';

class UseRecordsDetailView extends GetView<UseRecordsDetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(title: "换电记录详情"),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(32),
        child: Column(
          children: [
            Container(
              width: 686.w,
              height: 180.h,
              decoration: BoxDecoration(
                borderRadius: ArUtil.border(15),
                color: Colours.app_FA_grey,
              ),
              child: Flex(
                direction: Axis.horizontal,
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "1号",
                          style: TextStyle(
                            fontSize: 28.f,
                            fontWeight: FontWeight.w600,
                            color: Colours.app_main,
                          ),
                        ),
                        SizedBox(height: 18.h),
                        Text(
                          "放入仓",
                          style: TextStyle(
                            fontSize: 24.f,
                            color: Colours.app_normal_grey,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 1.w,
                    height: 88.h,
                    color: Colours.app_FD_grey,
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "2号",
                          style: TextStyle(
                            fontSize: 28.f,
                            fontWeight: FontWeight.w600,
                            color: Colours.app_main,
                          ),
                        ),
                        SizedBox(height: 18.h),
                        Text(
                          "取出仓",
                          style: TextStyle(
                            fontSize: 24.f,
                            color: Colours.app_normal_grey,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 1.w,
                    height: 88.h,
                    color: Colours.app_FD_grey,
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "3.00",
                          style: TextStyle(
                            fontSize: 28.f,
                            fontWeight: FontWeight.w600,
                            color: Colours.app_main,
                          ),
                        ),
                        SizedBox(height: 18.h),
                        Text(
                          "余额支付（元）",
                          style: TextStyle(
                            fontSize: 24.f,
                            color: Colours.app_normal_grey,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 32.h),
            Column(
              children: [
                RecordsItem(
                  lable: "订单编号：",
                  value: "NO123456789",
                ),
                SizedBox(height: 24.h),
                RecordsItem(
                  lable: "电柜ID：",
                  value: "123456",
                ),
                SizedBox(height: 24.h),
                RecordsItem(
                  lable: "电柜名称：",
                  value: "机器人产业园08",
                ),
                SizedBox(height: 24.h),
                RecordsItem(
                  lable: "换电时间：",
                  value: "2019.09.12 12:00",
                ),
                SizedBox(height: 24.h),
                RecordsItem(
                  lable: "放入电池SN码：",
                  value: "12345678",
                ),
                SizedBox(height: 24.h),
                RecordsItem(
                  lable: "取出电池SN码：",
                  value: "56789012",
                ),
                SizedBox(height: 24.h),
                RecordsItem(
                  lable: "换电结果：",
                  value: "换电成功",
                ),
                SizedBox(height: 24.h),
                RecordsItem(
                  lable: "电池剩余电量：",
                  value: "20%",
                ),
                SizedBox(height: 24.h),
                RecordsItem(
                  lable: "计费规则：",
                  value: "单次换电3元/次",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
