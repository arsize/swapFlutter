import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swapapp/app/colors/colors.dart';
import 'package:swapapp/app/utils/utils.dart';
import 'package:swapapp/app/modules/my/controllers/my_controller.dart';

class InfoItem extends StatelessWidget {
  const InfoItem({Key? key, required this.str}) : super(key: key);
  final String str;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyController>(builder: (_) {
      return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          _.isLogin ? "129.00" : '--',
          style: TextStyle(
            fontSize: 36.f,
            fontWeight: FontWeight.w500,
            color: Colours.app_main,
          ),
        ),
        SizedBox(
          height: 12.h,
        ),
        Text(
          str,
          style: TextStyle(
            fontSize: 24.f,
            color: Colours.app_font_grey,
          ),
        )
      ]);
    });
  }
}
