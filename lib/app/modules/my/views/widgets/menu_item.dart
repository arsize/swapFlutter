import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swapapp/app/modules/my/controllers/my_controller.dart';
import 'package:swapapp/app/utils/utils.dart';

class MenuItem extends StatelessWidget {
  const MenuItem(
      {Key? key,
      required this.icon,
      required this.itemText,
      required this.route})
      : super(key: key);
  final String icon;

  final String itemText;

  final String route;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 128.w,
      margin: EdgeInsets.only(top: 30.h),
      child: Center(
        child: InkWell(
          onTap: () {
            Get.toNamed(route);
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                width: 64.w,
                height: 64.h,
                image: AssetImage(icon),
              ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                itemText,
                style: TextStyle(
                  fontSize: 24.f,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
