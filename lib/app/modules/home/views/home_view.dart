import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:swapapp/app/utils/utils.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import '../controllers/home_controller.dart';
import 'google_map.dart';
import 'map_tools.dart';
import 'panel.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    Adapt.init(context);
    return Scaffold(
      appBar: AppBar(
        title: Image(
          width: 332.w,
          height: 48.h,
          image: AssetImage("images/home_logo.png"),
        ),
        centerTitle: true,
        brightness: Brightness.dark,
        leadingWidth: 94.w,
        leading: Builder(builder: (context) {
          return Padding(
            padding: EdgeInsets.only(left: 32.w),
            child: InkWell(
              onTap: () {
                // mycenter
                Navigator.of(context).pushNamed("my");
              },
              child: Image(
                image: AssetImage("images/home_avatar.png"),
              ),
            ),
          );
        }),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 32.w),
            child: InkWell(
              onTap: () {},
              child: Image(
                width: 54.w,
                height: 54.w,
                image: AssetImage("images/home_message.png"),
              ),
            ),
          ),
        ],
      ),
      body: SlidingUpPanel(
        margin: EdgeInsets.only(left: 13, right: 13),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),
        minHeight: 380.h,
        maxHeight: 560.h,
        panel: Panel(),
        body: SafeArea(
          child: Stack(
            children: [
              Gmap(),
              MapTools(),
            ],
          ),
        ),
      ),
    );
  }
}
