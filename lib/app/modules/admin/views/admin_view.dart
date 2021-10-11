import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:raintree/app/colors/colors.dart';
import 'package:raintree/app/common/widgets/app_bar.dart';
import 'package:raintree/app/utils/utils.dart';

import '../controllers/admin_controller.dart';

class AdminView extends GetView<AdminController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(title: "运营助手"),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 285.h,
              color: Colours.app_main,
              child: Image(
                image: AssetImage("images/home_logo_white.png"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
