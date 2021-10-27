library admin_cabinet_list;

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:gzx_dropdown_menu/gzx_dropdown_menu.dart';
import 'package:raintree/app/colors/colors.dart';
import 'package:raintree/app/common/widgets/app_bar.dart';
import 'package:raintree/app/utils/utils.dart';

import '../controllers/admin_cabinet_list_controller.dart';

part './widgets/admin_cabinet_item.dart';

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
                            height: 80.h,
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
                                  fontSize: 28.f,
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
                    GetBuilder<AdminCabinetListController>(builder: (_) {
                      return GZXDropDownHeader(
                        items: [
                          _.selectDistanceSortCondition.name == "全部"
                              ? GZXDropDownHeaderItem("在线状态")
                              : GZXDropDownHeaderItem(
                                  _.selectDistanceSortCondition.name,
                                ),
                        ],
                        controller: controller.dropdownMenuController,
                        stackKey: _stackKey,
                        height: 80.h,
                        iconDropDownColor: Colours.app_main,
                        iconColor: Colours.app_main,
                        dropDownStyle: TextStyle(
                          fontSize: 28.f,
                          color: Colours.app_main,
                        ),
                        style: TextStyle(
                          fontSize: 28.f,
                          color: Colours.app_main,
                        ),
                        borderWidth: 0,
                        onItemTap: (index) {
                          _scaffoldKey.currentState!.openEndDrawer();
                        },
                      );
                    }),
                  ],
                ),
              )
            ],
          ),
          Positioned(
            top: 190.h,
            left: 32.w,
            right: 32.w,
            bottom: 0,
            child: GetBuilder<AdminCabinetListController>(
              builder: (_) {
                return ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return AdminCabinetItem();
                  },
                  itemCount: _.records.length,
                  controller: _.scrollController,
                );
              },
            ),
          ),
          GZXDropDownMenu(
            controller: controller.dropdownMenuController,
            animationMilliseconds: 300,
            dropdownMenuChanging: (isShow, index) {},
            menus: [
              GZXDropdownMenuBuilder(
                dropDownWidget: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: controller.distanceSortConditions.length,
                  separatorBuilder: (BuildContext context, int index) =>
                      Divider(height: 1.0),
                  itemBuilder: (BuildContext context, int index) {
                    return inkWellDetector(index);
                  },
                ),
                dropDownHeight:
                    100.h * controller.distanceSortConditions.length,
              ),
            ],
          ),
        ],
      ),
    );
  }

  InkWell inkWellDetector(
    int index,
  ) {
    return InkWell(
      onTap: () {
        controller.selectDropItem(index);
      },
      child: GetBuilder<AdminCabinetListController>(builder: (_) {
        return Container(
          height: 100.h,
          padding: EdgeInsets.only(left: 40.w, right: 40.w),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  _.distanceSortConditions[index].name,
                  style: TextStyle(
                    fontSize: 28.f,
                    color: _.distanceSortConditions[index].isSelected
                        ? Colours.app_green
                        : Colours.app_font_grey6,
                  ),
                ),
              ),
              _.distanceSortConditions[index].isSelected
                  ? Icon(
                      Icons.check,
                      color: Colours.app_green,
                      size: 16,
                    )
                  : SizedBox()
            ],
          ),
        );
      }),
    );
  }
}
