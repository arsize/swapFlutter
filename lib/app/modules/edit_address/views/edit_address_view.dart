import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:raintree/app/colors/colors.dart';
import 'package:raintree/app/common/widgets/common_wigets.dart';
import 'package:raintree/app/utils/utils.dart';
import '../controllers/edit_address_controller.dart';

class EditAddressView extends GetView<EditAddressController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(title: "编辑收货地址"),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                color: Colors.white,
                width: double.infinity,
                height: 132.w,
                padding: EdgeInsets.only(
                  left: 32.w,
                  right: 32.w,
                ),
                child: Row(
                  children: [
                    Container(
                      constraints: BoxConstraints(minWidth: 132.w),
                      child: Text(
                        "收货人：",
                        style: TextStyle(
                          fontSize: 28.f,
                          color: Colours.app_normal_grey,
                        ),
                      ),
                    ),
                    Text(
                      "陈一一",
                      style: TextStyle(
                        color: Colours.app_main,
                        fontSize: 28.f,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 0.5,
                width: 685.w,
                color: Colours.app_E1_grey,
              ),
              Container(
                color: Colors.white,
                width: double.infinity,
                height: 132.w,
                padding: EdgeInsets.only(
                  left: 32.w,
                  right: 32.w,
                ),
                child: Row(
                  children: [
                    Container(
                      constraints: BoxConstraints(minWidth: 132.w),
                      child: Text(
                        "手机号码：",
                        style: TextStyle(
                          fontSize: 28.f,
                          color: Colours.app_normal_grey,
                        ),
                      ),
                    ),
                    Text(
                      "13687767897",
                      style: TextStyle(
                        color: Colours.app_main,
                        fontSize: 28.f,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 0.5,
                width: 685.w,
                color: Colours.app_E1_grey,
              ),
              Container(
                color: Colors.white,
                width: double.infinity,
                height: 132.w,
                padding: EdgeInsets.only(
                  left: 32.w,
                  right: 32.w,
                ),
                child: Row(
                  children: [
                    Container(
                      constraints: BoxConstraints(minWidth: 132.w),
                      child: Text(
                        "所在地区：",
                        style: TextStyle(
                          fontSize: 28.f,
                          color: Colours.app_normal_grey,
                        ),
                      ),
                    ),
                    Text(
                      "广东省深圳市宝安区",
                      style: TextStyle(
                        color: Colours.app_main,
                        fontSize: 28.f,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 0.5,
                width: 685.w,
                color: Colours.app_E1_grey,
              ),
              Container(
                color: Colors.white,
                width: double.infinity,
                height: 132.w,
                padding: EdgeInsets.only(
                  left: 32.w,
                  right: 32.w,
                ),
                child: Row(
                  children: [
                    Container(
                      constraints: BoxConstraints(minWidth: 132.w),
                      child: Text(
                        "详细地址：",
                        style: TextStyle(
                          fontSize: 28.f,
                          color: Colours.app_normal_grey,
                        ),
                      ),
                    ),
                    Text(
                      "西乡街道南昌第二新村东一巷3号",
                      style: TextStyle(
                        color: Colours.app_main,
                        fontSize: 28.f,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 40.h,
            left: 32.w,
            child: arBtn(
              fn: () {},
              width: 686,
              text: "保存",
            ),
          )
        ],
      ),
    );
  }
}
