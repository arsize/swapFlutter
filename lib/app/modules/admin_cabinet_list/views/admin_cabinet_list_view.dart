library admin_cabinet_list;

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:gzx_dropdown_menu/gzx_dropdown_menu.dart';
import 'package:raintree/app/colors/colors.dart';
import 'package:raintree/app/common/widgets/app_bar.dart';
import 'package:raintree/app/utils/utils.dart';

import '../controllers/admin_cabinet_list_controller.dart';

part './widgets/drop_down_menu.dart';

class AdminCabinetListView extends GetView<AdminCabinetListController> {
  final GlobalKey _stackKey = GlobalKey();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: defaultAppBar(title: "电柜列表"),
      body: Stack(
        key: _stackKey,
        fit: StackFit.expand,
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 8.h),
                width: Get.width,
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 50.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 40.w, top: 8.h),
                            width: 598.w,
                            height: 70.h,
                            child: TextField(
                              controller: controller.searchController,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(
                                  left: 20.w,
                                ),
                                filled: true,
                                fillColor: Colours.app_search_grey,
                                hintText: "输入电柜名/电柜ID/电柜地址搜索",
                                prefixIcon: Icon(
                                  Icons.search,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide.none,
                                ),
                                hintStyle: TextStyle(
                                  color: Colours.app_font_grey,
                                ),
                              ),
                              onChanged: (String text) {},
                            ),
                          ),
                          Image(
                            width: 40.w,
                            height: 40.w,
                            image: AssetImage("images/admin_scan_icon.png"),
                          )
                        ],
                      ),
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     Text(
                    //       "在线状态",
                    //       style: TextStyle(
                    //         fontSize: 32.f,
                    //         color: Colours.app_font_grey6,
                    //       ),
                    //     ),
                    //     SizedBox(width: 17.w),
                    //     Image(
                    //       width: 17.w,
                    //       height: 12.w,
                    //       image: AssetImage(
                    //         "images/right_down_tang.png",
                    //       ),
                    //     )
                    //   ],
                    // )
                    GZXDropDownHeader(
                      items: [
                        GZXDropDownHeaderItem("在线状态"),
                      ],
                      controller: controller.dropdownMenuController,
                      stackKey: _stackKey,
                      height: 80.h,
                      iconColor: Colours.app_green,
                      style: TextStyle(
                        fontSize: 30.f,
                        color: Colours.app_green,
                      ),
                      borderWidth: 0,
                      onItemTap: (index) {
                        print("点击了");
                        _scaffoldKey.currentState!.openEndDrawer();
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
          GZXDropDownMenu(
            controller: controller.dropdownMenuController,
            animationMilliseconds: 300,
            menus: [
              GZXDropdownMenuBuilder(
                dropDownWidget: Container(
                  width: 100,
                  child: Text("hello"),
                ),
                dropDownHeight: 40 * 8.0,
              )
            ],
          )
        ],
      ),
    );
  }
}
