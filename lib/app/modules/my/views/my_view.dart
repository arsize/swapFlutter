import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:swapapp/app/colors/colors.dart';
import 'package:swapapp/app/common/widgets/common_wigets.dart';
import 'package:swapapp/app/modules/my/views/widgets/info_item.dart';
import 'package:swapapp/app/modules/my/views/widgets/menu_item.dart';
import 'package:swapapp/app/store/store.dart';
import 'package:swapapp/app/utils/utils.dart';
import '../controllers/my_controller.dart';
import 'widgets/menu_panel.dart';

class MyView extends GetView<MyController> {
  final StoreController store = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(
        title: "个人中心",
        elevation: 0,
      ),
      body: GestureDetector(
        onTapDown: (TapDownDetails details) {
          onTapDown(context, details);
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 260.h,
                    color: Colours.app_main,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 32.w,
                        right: 32.w,
                      ),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: FractionalTranslation(
                          translation: Offset(0, 0.5),
                          child: Container(
                            padding: EdgeInsets.only(
                              left: 28.w,
                              right: 28.w,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(6),
                              ),
                            ),
                            width: double.infinity,
                            height: 204.h,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InfoItem(str: "钱包余额(元)"),
                                Container(
                                  width: 2.w,
                                  height: 80.h,
                                  color: Colours.app_light_grey,
                                ),
                                InfoItem(str: "本月换电(次)"),
                                Container(
                                  width: 2.w,
                                  height: 80.h,
                                  color: Colours.app_light_grey,
                                ),
                                InfoItem(str: "当前套餐剩余(次)"),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 32.w,
                      right: 32.w,
                      top: 20.w,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 400.w,
                          height: 95.h,
                          child: InkWell(
                            onTap: () {
                              Get.toNamed("/setting");
                            },
                            child: Row(
                              children: [
                                Obx(
                                  () => Image(
                                    width: 112.w,
                                    height: 112.h,
                                    image: store.isLogin.value
                                        ? AssetImage("images/app_info_logo.png")
                                        : AssetImage(
                                            "images/my_avatar_default.png"),
                                  ),
                                ),
                                SizedBox(
                                  width: 24.w,
                                ),
                                Obx(
                                  () => Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        store.isLogin.value ? "成龙" : "未登录",
                                        style: TextStyle(
                                          fontSize: 36.f,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Offstage(
                                        offstage: !store.isLogin.value,
                                        child: Text(
                                          "130xxxx5678",
                                          style: TextStyle(
                                            fontSize: 28.f,
                                            color:
                                                Colors.white.withOpacity(0.8),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Get.toNamed("/my-qrcode");
                          },
                          child: Image(
                            width: Adapt.width(80),
                            height: Adapt.height(80),
                            image: AssetImage("images/my_qrcode.png"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 130.h,
              ),
              MenuPanel(
                warp: false,
                titleName: '商城订单',
                menuList: [
                  MenuItem(
                      icon: "images/my_icons01.png",
                      itemText: "待付款",
                      route: ""),
                  MenuItem(
                      icon: "images/my_icons02.png",
                      itemText: "待发货",
                      route: ""),
                  MenuItem(
                      icon: "images/my_icons03.png",
                      itemText: "待收货",
                      route: ""),
                  MenuItem(
                      icon: "images/my_icons04.png",
                      itemText: "全部订单",
                      route: ""),
                ],
              ),
              SizedBox(
                height: 32.h,
              ),
              MenuPanel(
                warp: true,
                titleName: '常用功能',
                menuList: [
                  MenuItem(
                      icon: "images/my_icons05.png",
                      itemText: "我的车辆",
                      route: "my_vehicle"),
                  MenuItem(
                      icon: "images/my_icons06.png",
                      itemText: "服务网点",
                      route: ""),
                  MenuItem(
                      icon: "images/my_icons07.png",
                      itemText: "客服中心",
                      route: ""),
                  MenuItem(
                      icon: "images/my_icons08.png",
                      itemText: "设置",
                      route: "setting"),
                  MenuItem(
                      icon: "images/my_icons09.png",
                      itemText: "公告消息",
                      route: "notice_list"),
                  MenuItem(
                      icon: "images/my_icons10.png",
                      itemText: "更多",
                      route: "/more"),
                  MenuItem(
                      icon: "images/my_icons11.png",
                      itemText: "管理员",
                      route: ""),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // 点击事件
  void onTapDown(
    BuildContext context,
    TapDownDetails details,
  ) async {
    var dx = details.globalPosition.dx;
    var dy = details.globalPosition.dy;
    if (dy > 312.h && dy < 516.h) {
      if (dx > 32.w && dx < 250.w) {
        // 钱包余额
        Get.toNamed("/wallet");
      } else if (dx > 118.w && dx < 219.w) {
        // 本月换电
      } else if (dx > 227.w && dx < 339.w) {
        // 当前套餐剩余
      } else {
        return;
      }
    }
  }
}
