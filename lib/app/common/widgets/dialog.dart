/*
 * @Author: Arsize 
 * @Date: 2021-08-24 14:42:12 
 * @Describe: 弹窗组件
 */
import 'package:flutter/material.dart';
import 'package:swapapp/app/colors/colors.dart';
import 'package:swapapp/app/utils/utils.dart';

class ArDialog extends Dialog {
  /// 弹窗类型，分为：确认-confirm；选择-choice；通知-info；列表-list
  final type;

  /// 弹窗宽度
  final width;

  /// 弹窗长度
  final height;

  /// 是否有圆角
  final round;

  /// 弹窗标题
  final title;

  /// 弹窗内容
  final content;

  /// 确认回调函数
  final void Function()? fn1;

  /// 确认按钮文字
  final confirmText;

  /// 取消回调函数
  final void Function()? fn2;

  /// 取消按钮文字
  final cancelText;

  const ArDialog({
    Key? key,
    required this.type,
    this.width,
    this.height,
    this.round = true,
    this.title = "温馨提示",
    this.content = '',
    this.confirmText = "确认",
    this.cancelText = "点错了",
    this.fn1,
    this.fn2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: _hanleDialogType(),
    );
  }

  _hanleDialogType() {
    switch (this.type) {
      case "confirm":
        return _confirmDialog();
      case "choice":
        break;
      case "info":
        break;
      case "list":
        break;
      default:
    }
  }

  // 确认弹窗
  Widget _confirmDialog() {
    return Center(
      child: Container(
        width: this.width ?? 640.w,
        height: this.height ?? 390.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: this.round != true
              ? BorderRadius.zero
              : BorderRadius.circular(16.w),
        ),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              width: this.width ?? 640.w,
              height: 100.h,
              decoration: BoxDecoration(
                color: Colours.app_dialog_title,
                borderRadius: this.round != true
                    ? BorderRadius.zero
                    : BorderRadius.circular(16.w),
              ),
              child: Text(
                this.title,
                style: TextStyle(
                  fontSize: 32.f,
                  color: Colours.app_main,
                ),
              ),
            ),
            SizedBox(
              height: 56.h,
            ),
            Center(
              child: Text(
                this.content,
                style: TextStyle(
                  fontSize: 28.f,
                  color: Colours.app_font_grey6,
                ),
              ),
            ),
            SizedBox(
              height: 56.h,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 40.w,
                right: 40.w,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: this.fn1,
                    child: Container(
                      alignment: Alignment.center,
                      width: 260.w,
                      height: 88.h,
                      decoration: BoxDecoration(
                        color: Colours.app_F1_grey,
                        borderRadius: BorderRadius.circular(15.w),
                      ),
                      child: Text(
                        this.cancelText,
                        style: TextStyle(
                          fontSize: 32.f,
                          color: Colours.app_main,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: this.fn2,
                    child: Container(
                      alignment: Alignment.center,
                      width: 260.w,
                      height: 88.h,
                      decoration: BoxDecoration(
                        color: Colours.app_main,
                        borderRadius: BorderRadius.circular(15.w),
                      ),
                      child: Text(
                        this.confirmText,
                        style: TextStyle(
                          fontSize: 32.f,
                          color: Colours.app_yellow,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Material(
  //     type: MaterialType.transparency, //透明类型
  //     child: Center(
  //       child: SizedBox(
  //         width: 200.0,
  //         height: 160.0,
  //         child: Container(
  //           color: Colors.white,
  //           child: ListView.builder(
  //               itemCount: data.length == 0 ? 0 : data.length,
  //               itemBuilder: (BuildContext context, int position) {
  //                 return itemWidget(context, position);
  //               }),
  //         ),
  //       ),
  //     ),
  //   );
  // }

  // Widget itemWidget(BuildContext context, int index) {
  //   return GestureDetector(
  //     child: Container(
  //         height: 40,
  //         width: double.infinity,
  //         child: Center(
  //           child: Text(data[index]),
  //         )),
  //     onTap: () {
  //       Navigator.pop(context, data[index]);
  //     },
  //   );
  // }
}