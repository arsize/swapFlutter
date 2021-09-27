/*
 * @Author: Arsize 
 * @Date: 2021-08-25 11:23:25 
 * @Describe: 默认按钮
 */
import 'package:flutter/material.dart';
import 'package:swapapp/app/colors/colors.dart';
import 'package:swapapp/app/utils/utils.dart';

Widget arBtn({
  double width: 630.0,
  double height: 98.0,
  double borderRadius: 15.0,
  double fontSize: 32.0,
  backgroundColor: Colours.app_main,
  String text: '默认',
  String leftIcon: '',
  required void Function()? fn,
}) {
  return ElevatedButton(
    style: ButtonStyle(
      fixedSize: MaterialStateProperty.all(
        Size(
          width.w,
          height.h,
        ),
      ),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          side: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(borderRadius.w),
          ),
        ),
      ),
      backgroundColor: MaterialStateProperty.resolveWith((states) {
        return fn != null ? backgroundColor : backgroundColor.withOpacity(0.5);
      }),
      foregroundColor: MaterialStateProperty.resolveWith(
        (states) => Colours.app_text_light,
      ),
    ),
    onPressed: fn,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        getImage(leftIcon),
        Offstage(
          offstage: leftIcon == '',
          child: SizedBox(
            width: 20.w,
          ),
        ),
        Text(
          text,
          style: TextStyle(fontSize: fontSize.f),
        )
      ],
    ),
  );
}

Widget getImage(leftIcon) {
  return leftIcon == ''
      ? Container()
      : Image(
          image: AssetImage(leftIcon),
          width: 36.w,
          height: 36.w,
        );
}
