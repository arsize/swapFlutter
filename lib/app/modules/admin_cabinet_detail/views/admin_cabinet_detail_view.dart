library admin_cabinet_detail;

import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import 'package:get/get.dart';
import 'package:popover/popover.dart';
import 'package:raintree/app/colors/colors.dart';
import 'package:raintree/app/utils/utils.dart';

part './widgets/box_info.dart';
part './widgets/cabinet_info.dart';

class AdminCabinetDetailView extends StatefulWidget {
  const AdminCabinetDetailView({Key? key}) : super(key: key);

  @override
  _AdminCabinetDetailViewState createState() => _AdminCabinetDetailViewState();
}

class _AdminCabinetDetailViewState extends State<AdminCabinetDetailView>
    with SingleTickerProviderStateMixin {
  List tabs = ["仓位信息", "电柜信息"];
  late TabController _controller;
  List<Widget> widgets = [BoxInfo(), CabinetInfo()];

  @override
  void initState() {
    super.initState();
    _controller = TabController(
      length: tabs.length,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "电柜详情",
          style: TextStyle(
            fontSize: 36.f,
          ),
        ),
        backgroundColor: Colours.app_main,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        bottom: TabBar(
          labelStyle: TextStyle(
            fontSize: 32.f,
          ),
          controller: _controller,
          tabs: tabs
              .map((e) => Tab(
                    text: e,
                  ))
              .toList(),
        ),
      ),
      body: Center(
        child: TabBarView(
          children: widgets,
          controller: _controller,
        ),
      ),
    );
  }
}
