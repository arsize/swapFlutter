/*
 * @Author: Arsize 
 * @Date: 2021-08-25 11:23:25 
 * @Describe: 默认按钮
 */
import 'package:flutter/material.dart';
import 'package:swapapp/themes/colors.dart';
import 'package:swapapp/utils/utils.dart';

Widget arBtn({
  double width: 630.0,
  double height: 98.0,
  double borderRadius: 15.0,
  double fontSize: 32.0,
  backgroundColor: Colours.app_main,
  String text: '默认',
  required void Function()? fn,
}) {
  return ElevatedButton(
    style: ButtonStyle(
      minimumSize: MaterialStateProperty.all(
        Size(
          Adapt.width(width),
          Adapt.height(height),
        ),
      ),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          side: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(Adapt.width(borderRadius)),
          ),
        ),
      ),
      backgroundColor: MaterialStateProperty.resolveWith((states) {
        return backgroundColor;
      }),
      foregroundColor: MaterialStateProperty.resolveWith(
        (states) => Colours.app_text_light,
      ),
    ),
    onPressed: fn,
    child: Text(
      text,
      style: TextStyle(fontSize: Adapt.font(fontSize)),
    ),
  );
}
