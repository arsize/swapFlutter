import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:raintree/app/common/widgets/common_wigets.dart';
import 'package:raintree/app/modules/more/views/widgets/item_menu.dart';

import '../controllers/more_controller.dart';

class MoreView extends GetView<MoreController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(
        title: "更多",
      ),
      body: Column(
        children: [
          ItemMenu(str: "关于我们", route: "/about-us"),
          ItemMenu(str: "用户协议", route: "/agreement?type=user"),
          ItemMenu(str: "充值协议", route: "/agreement?type=charge"),
          ItemMenu(str: "交货政策", route: "/agreement?type=product"),
          ItemMenu(str: "隐私政策", route: "/agreement?type=secret"),
        ],
      ),
    );
  }
}
