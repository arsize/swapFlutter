/*
 * @Author: Arsize 
 * @Date: 2021-09-29 15:45:12 
 * @Describe: 收货地址
 */
library product_address;

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'package:get/get.dart';
import 'package:raintree/app/colors/colors.dart';
import 'package:raintree/app/common/widgets/common_wigets.dart';
import 'package:raintree/app/utils/utils.dart';

import '../controllers/product_address_controller.dart';

part './widgets/product_list_item.dart';

class ProductAddressView extends GetView<ProductAddressController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(title: "收货地址"),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 178.h),
            child: GetBuilder<ProductAddressController>(
              builder: (_) {
                if (_.address.data != null && _.address.data!.records != null) {
                  return _.address.data!.records.isNotEmpty
                      ? ListView(
                          children: _.address.data!.records
                              .map(
                                (e) => Container(
                                  width: Get.width,
                                  margin: EdgeInsets.only(bottom: 30.h),
                                  child: Slidable(
                                    actionPane: SlidableScrollActionPane(),
                                    actionExtentRatio: 0.25,
                                    secondaryActions: <Widget>[
                                      //右侧按钮列表
                                      IconSlideAction(
                                        caption: '编辑',
                                        closeOnTap: true,
                                        color: Colors.black45,
                                        icon: Icons.more_horiz,
                                        onTap: () {
                                          Get.toNamed(
                                            "/edit-address?id=${e.id}&name=${e.consignee}&mobile=${e.consigneePhone}&detailedAddress=${e.detailedAddress}&address=${e.takeRegion}",
                                          );
                                        },
                                      ),
                                      IconSlideAction(
                                        caption: '删除',
                                        color: Colors.red,
                                        icon: Icons.delete,
                                        closeOnTap: true,
                                        onTap: () {
                                          arDialog(
                                            context: Get.context,
                                            content: "确定要删除该收货地址?",
                                            fn1: () {
                                              Get.back();
                                            },
                                            fn1Text: "取消",
                                            fn2: () {
                                              controller.delAddress(e.id);
                                              Get.back();
                                            },
                                            fn2Text: "确定",
                                          );
                                        },
                                      ),
                                    ],
                                    child: ProductListItem(
                                      name: e.consignee,
                                      mobile: e.consigneePhone,
                                      address: e.takeRegion + e.detailedAddress,
                                      id: e.id,
                                      detail: e.detailedAddress,
                                    ),
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
                                "暂无收货地址",
                                style: TextStyle(
                                  fontSize: 28.f,
                                  color: Colours.app_font_grey,
                                ),
                              )
                            ],
                          ),
                        );
                } else {
                  return Container(
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
                          "暂无收货地址",
                          style: TextStyle(
                            fontSize: 28.f,
                            color: Colours.app_font_grey,
                          ),
                        )
                      ],
                    ),
                  );
                }
              },
            ),
          ),
          Positioned(
            bottom: 40.h,
            left: 32.w,
            child: Container(
              child: arBtn(
                fn: () {
                  Get.toNamed("add-address");
                },
                width: 686,
                text: "新增收货地址",
              ),
            ),
          )
        ],
      ),
    );
  }
}
