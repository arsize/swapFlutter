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
                width: Get.width,
                height: 132.w,
                padding: EdgeInsets.only(
                  left: 32.w,
                  right: 32.w,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      constraints: BoxConstraints(minWidth: 132.w),
                      child: Text(
                        "收货人：",
                        style: TextStyle(
                          color: Colours.app_normal_grey,
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        controller: controller.nameInputController,
                        decoration: InputDecoration(
                          hintText: "请填写收货人姓名",
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                            color: Colours.app_normal_grey,
                          ),
                        ),
                        onChanged: (String text) {
                          controller.inputOnchange(text, 'name');
                        },
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
                width: Get.width,
                height: 132.w,
                padding: EdgeInsets.only(
                  left: 32.w,
                  right: 32.w,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      constraints: BoxConstraints(minWidth: 132.w),
                      child: Text(
                        "手机号码：",
                        style: TextStyle(
                          color: Colours.app_normal_grey,
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        controller: controller.mobileInputController,
                        decoration: InputDecoration(
                          hintText: "请填写收货人手机号码",
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                            color: Colours.app_normal_grey,
                          ),
                        ),
                        onChanged: (String text) {
                          controller.inputOnchange(text, 'mobile');
                        },
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
                width: Get.width,
                height: 132.w,
                padding: EdgeInsets.only(
                  left: 32.w,
                  right: 32.w,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      constraints: BoxConstraints(minWidth: 132.w),
                      child: Text(
                        "所在地区：",
                        style: TextStyle(
                          color: Colours.app_normal_grey,
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        controller: controller.addressInputController,
                        decoration: InputDecoration(
                          hintText: "省市区县、乡镇等",
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                            color: Colours.app_normal_grey,
                          ),
                        ),
                        onChanged: (String text) {
                          controller.inputOnchange(text, 'address');
                        },
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
                width: Get.width,
                height: 132.w,
                padding: EdgeInsets.only(
                  left: 32.w,
                  right: 32.w,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      constraints: BoxConstraints(minWidth: 132.w),
                      child: Text(
                        "详细地址${controller.id}：",
                        style: TextStyle(
                          color: Colours.app_normal_grey,
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        controller: controller.detailInputController,
                        decoration: InputDecoration(
                          hintText: "街道、楼牌号等",
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                            color: Colours.app_normal_grey,
                          ),
                        ),
                        onChanged: (String text) {
                          controller.inputOnchange(text, 'detail_address');
                        },
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
            child: Obx(() {
              return controller.finish.value
                  ? arBtn(
                      fn: () {
                        controller.submitTo();
                      },
                      width: 686,
                      text: "保存",
                    )
                  : arBtn(
                      fn: null,
                      width: 686,
                      text: "保存",
                    );
            }),
          )
        ],
      ),
    );
  }
}
