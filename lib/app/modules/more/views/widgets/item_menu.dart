import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swapapp/app/utils/utils.dart';
import 'package:swapapp/app/colors/colors.dart';

class ItemMenu extends StatelessWidget {
  final String str;
  final String route;

  const ItemMenu({
    Key? key,
    required this.str,
    required this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(
              color: Colours.app_light_grey,
              width: 0.5,
              style: BorderStyle.solid,
            ),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            top: 28.h,
            bottom: 28.h,
            left: 32.w,
            right: 32.w,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                str,
                style: TextStyle(
                  fontSize: 30.f,
                  color: Colours.app_main,
                ),
              ),
              Icon(
                Icons.keyboard_arrow_right,
                color: Colours.app_icon_right,
              ),
            ],
          ),
        ),
      ),
      onTap: () {
        Get.toNamed(route);
      },
    );
  }
}
