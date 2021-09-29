/*
 * @Author: Arsize 
 * @Date: 2021-09-29 15:45:12 
 * @Describe: 收货地址
 */
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:swapapp/app/colors/colors.dart';
import 'package:swapapp/app/common/widgets/common_wigets.dart';
import 'package:swapapp/app/utils/utils.dart';

import '../controllers/product_address_controller.dart';

class ProductAddressView extends GetView<ProductAddressController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(title: "收货地址"),
      body: Stack(
        children: [
          ListView.builder(
            itemCount: controller.addressList.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed("edit_my_address");
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: Adapt.height(20)),
                  width: double.infinity,
                  color: Colors.white,
                  padding: EdgeInsets.all(
                    Adapt.width(32),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "陈一一",
                                style: TextStyle(
                                  fontSize: Adapt.font(32),
                                  color: Colours.app_main,
                                ),
                              ),
                              SizedBox(
                                width: Adapt.width(30),
                              ),
                              Text(
                                "13244546765",
                                style: TextStyle(
                                  color: Colours.app_font_grey6,
                                  fontSize: Adapt.font(28),
                                ),
                              )
                            ],
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context)
                                  .pushNamed("edit_my_address");
                            },
                            child: Icon(
                              Icons.border_color,
                              size: Adapt.font(30),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Adapt.height(23),
                      ),
                      Text(
                        "深圳市宝安区西乡街道华丰机器人产业园C栋506",
                        style: TextStyle(
                          fontSize: Adapt.font(28),
                          color: Colours.app_font_grey6,
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
          Positioned(
            bottom: 40.h,
            left: Adapt.width(32),
            child: arBtn(
              fn: () {},
              width: 686,
              text: "新增收货地址",
            ),
          )
        ],
      ),
    );
  }
}
