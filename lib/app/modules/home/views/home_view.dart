/*
 * @Author: Arsize 
 * @Date: 2021-09-28 09:28:21 
 * @Describe: 首页
 */
library home_view;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:raintree/app/colors/colors.dart';
import 'package:raintree/app/store/store.dart';
import 'package:raintree/app/utils/utils.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:raintree/app/common/widgets/common_wigets.dart';
import 'package:raintree/app/modules/home/controllers/home_controller.dart';

// part
part './widgets/panel.dart';
part './widgets/panel_topbar.dart';
part './widgets/google_map.dart';
part './widgets/map_tools.dart';
part './widgets/panel_btn_list.dart';
part './widgets/panel_head_text.dart';
part './widgets/cabinet_panel.dart';
part './widgets/panel_head_row.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    final StoreController store = Get.find();
    Adapt.init(context);

    return Scaffold(
      appBar: AppBar(
        title: Image(
          width: 332.w,
          height: 48.h,
          image: AssetImage("images/home_logo.png"),
        ),
        centerTitle: true,
        backgroundColor: Colours.app_main,
        leadingWidth: 94.w,
        leading: Builder(builder: (context) {
          return Padding(
            padding: EdgeInsets.only(left: 32.w),
            child: InkWell(
              onTap: () {
                Get.toNamed("/my");
              },
              child: Obx(
                () => store.isLogin.value
                    ? Image(
                        image: AssetImage("images/my_avatar_default.png"),
                      )
                    : Image(
                        image: AssetImage("images/home_avatar.png"),
                      ),
              ),
            ),
          );
        }),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 32.w),
            child: InkWell(
              onTap: () {
                Get.toNamed("/notice-list");
              },
              child: Image(
                width: 54.w,
                height: 54.w,
                image: AssetImage("images/home_no_message.png"),
              ),
            ),
          ),
        ],
      ),
      body: Obx(() {
        return SlidingUpPanel(
          margin: controller.currentModle.value == 'cabinet'
              ? EdgeInsets.only(left: 0, right: 0)
              : EdgeInsets.only(left: 13, right: 13),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
          ),
          minHeight: 380.h,
          maxHeight: controller.currentModle.value == 'cabinet' ? 620.h : 560.h,
          panel: controller.currentModle.value == 'cabinet'
              ? CabinetPanel()
              : Panel(),
          body: SafeArea(
            child: Stack(
              children: [
                Gmap(),
                MapTools(),
              ],
            ),
          ),
        );
      }),
    );
  }
}
