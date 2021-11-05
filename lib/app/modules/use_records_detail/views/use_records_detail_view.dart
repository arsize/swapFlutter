library use_records_detail_view;

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:raintree/app/colors/colors.dart';
import 'package:raintree/app/common/methods/normal.dart';
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
                        GetBuilder<UseRecordsDetailController>(builder: (_) {
                          return Text(
                            "${_.exchangeRecordDetail.data?.returnBoxSn ?? '--'}号",
                            style: TextStyle(
                              fontSize: 28.f,
                              fontWeight: FontWeight.w600,
                              color: Colours.app_main,
                            ),
                          );
                        }),
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
                        GetBuilder<UseRecordsDetailController>(builder: (_) {
                          return Text(
                            "${_.exchangeRecordDetail.data?.borrowBoxSn ?? '--'}号",
                            style: TextStyle(
                              fontSize: 28.f,
                              fontWeight: FontWeight.w600,
                              color: Colours.app_main,
                            ),
                          );
                        }),
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
                    child: GetBuilder<UseRecordsDetailController>(
                      builder: (_) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "${_.exchangeRecordDetail.data?.money ?? '--'}",
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
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 32.h),
            GetBuilder<UseRecordsDetailController>(builder: (_) {
              return Column(
                children: [
                  RecordsItem(
                    lable: "订单编号：",
                    value: _.exchangeRecordDetail.data?.orderNo ?? '--',
                  ),
                  SizedBox(height: 24.h),
                  RecordsItem(
                    lable: "电柜ID：",
                    value: _.exchangeRecordDetail.data?.cabinetDeviceId ?? '--',
                  ),
                  SizedBox(height: 24.h),
                  RecordsItem(
                    lable: "电柜名称：",
                    value: _.exchangeRecordDetail.data?.cabinetName ?? '--',
                  ),
                  SizedBox(height: 24.h),
                  RecordsItem(
                    lable: "换电时间：",
                    value: formateTime(_.exchangeRecordDetail.data?.ctime),
                  ),
                  SizedBox(height: 24.h),
                  RecordsItem(
                    lable: "放入电池SN码：",
                    value: _.exchangeRecordDetail.data?.returnBatterySn ?? '--',
                  ),
                  SizedBox(height: 24.h),
                  RecordsItem(
                    lable: "取出电池SN码：",
                    value: (_.exchangeRecordDetail.data?.borrowBatterySn !=
                                null &&
                            _.exchangeRecordDetail.data!.borrowBatterySn != '')
                        ? _.exchangeRecordDetail.data!.borrowBatterySn
                            .toString()
                        : '--',
                  ),
                  SizedBox(height: 24.h),
                  RecordsItem(
                    lable: "换电结果：",
                    value: _.exchangeRecordDetail.data?.exchangeResult == -1
                        ? "柜子无响应"
                        : _.exchangeRecordDetail.data?.exchangeResult == 0
                            ? "换电成功"
                            : _.exchangeRecordDetail.data?.exchangeResult == 1
                                ? "换电成功"
                                : _.exchangeRecordDetail.data?.exchangeResult ==
                                        2
                                    ? "无空仓，结束换电"
                                    : _.exchangeRecordDetail.data
                                                ?.exchangeResult ==
                                            3
                                        ? "无满电电池,结束换电"
                                        : _.exchangeRecordDetail.data
                                                    ?.exchangeResult ==
                                                4
                                            ? "空仓开启失败,结束换电"
                                            : _.exchangeRecordDetail.data
                                                        ?.exchangeResult ==
                                                    5
                                                ? "未检测到电池，结束换电"
                                                : _.exchangeRecordDetail.data
                                                            ?.exchangeResult ==
                                                        6
                                                    ? "电池检测类型不匹配，结束换电"
                                                    : _.exchangeRecordDetail.data
                                                                ?.exchangeResult ==
                                                            7
                                                        ? "电柜繁忙，无法响应"
                                                        : _.exchangeRecordDetail.data
                                                                    ?.exchangeResult ==
                                                                8
                                                            ? "空仓开启后未在操作时间内完成换电"
                                                            : _.exchangeRecordDetail.data
                                                                        ?.exchangeResult ==
                                                                    9
                                                                ? "指令超时"
                                                                : "--",
                  ),
                  SizedBox(height: 24.h),
                  RecordsItem(
                    lable: "电池剩余电量：",
                    value: _.exchangeRecordDetail.data?.returnBatterySoc != null
                        ? '${_.exchangeRecordDetail.data?.returnBatterySoc.toString()}%'
                        : '--',
                  ),
                  SizedBox(height: 24.h),
                  RecordsItem(
                    lable: "计费规则：",
                    value: _.exchangeRecordDetail.data?.chargingType == 0
                        ? '单次余额抵扣'
                        : '包月次卡抵扣',
                  ),
                ],
              );
            })
          ],
        ),
      ),
    );
  }
}
