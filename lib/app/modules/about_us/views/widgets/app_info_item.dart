import 'package:flutter/material.dart';
import 'package:swapapp/app/colors/colors.dart';
import 'package:swapapp/app/utils/utils.dart';

class AppInfoItem extends StatelessWidget {
  const AppInfoItem({Key? key, required this.value, required this.lable})
      : super(key: key);
  final String lable;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
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
        padding: EdgeInsets.all(
          30.w,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              lable,
              style: TextStyle(
                fontSize: 30.f,
                color: Colours.app_main,
              ),
            ),
            Text(
              value,
              style: TextStyle(
                fontSize: 30.f,
                color: Colours.app_font_grey6,
              ),
            )
          ],
        ),
      ),
    );
  }
}
