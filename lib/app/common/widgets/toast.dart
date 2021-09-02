/*
 * @Author: Arsize 
 * @Date: 2021-08-24 14:42:24 
 * @Describe: Toast组件封装
 */
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:swapapp/app/utils/utils.dart';

arToast({
  String msg = "默认toast",
}) async {
  return await Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.CENTER,
    timeInSecForIosWeb: 1,
    backgroundColor: Colors.black.withOpacity(0.7),
    textColor: Colors.white,
    fontSize: 28.f,
  );
}
