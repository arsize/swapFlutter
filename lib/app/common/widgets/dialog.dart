/*
 * @Author: Arsize 
 * @Date: 2021-08-24 14:42:12 
 * @Describe: 弹窗组件
 */
import 'package:flutter/material.dart';
import 'package:raintree/app/colors/colors.dart';
import 'package:raintree/app/utils/utils.dart';

arDialog({
  context,
  type,
  title,
  contentWidget,
  content,
  height,
  fn1,
  fn2,
  fn1Text,
  fn2Text,
}) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return ArDialog(
        type: type ?? "normal",
        title: title ?? '温馨提示',
        content: content,
        fn1Text: fn1Text ?? '取消',
        fn2Text: fn2Text ?? '确认',
        contentWidget: contentWidget,
        height: height,
        fn1: fn1,
        fn2: fn2,
      );
    },
  );
}

class ArDialog extends Dialog {
  /// 弹窗类型，分为：确认-confirm；选择-choice；通知-info；列表-list
  final String type;

  /// 弹窗宽度
  final double? width;

  /// 弹窗长度
  final double? height;

  /// 是否有圆角
  final bool round;

  /// 弹窗标题
  final String? title;

  /// 弹窗文字内容
  final String? content;

  /// 弹窗widget内容
  final Widget? contentWidget;

  /// 确认回调函数
  final void Function()? fn1;

  /// 确认按钮文字
  final String? fn2Text;

  /// 取消回调函数
  final void Function()? fn2;

  /// 取消按钮文字
  final String? fn1Text;

  const ArDialog({
    Key? key,
    this.type = "normal",
    this.width,
    this.contentWidget,
    this.height,
    this.round = true,
    this.title,
    this.content = '',
    this.fn2Text,
    this.fn1Text,
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
    switch (type) {
      case "normal":
        return _normalDialog();
      case "list":
        break;
      default:
    }
  }

  // 确认弹窗
  Widget _normalDialog() {
    return Center(
      child: Container(
        width: width ?? 640.w,
        height: height ?? 390.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:
              round != true ? BorderRadius.zero : BorderRadius.circular(16.w),
        ),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              width: width ?? 640.w,
              height: 100.h,
              decoration: BoxDecoration(
                color: Colours.app_dialog_title,
                borderRadius: round != true
                    ? BorderRadius.zero
                    : BorderRadius.circular(16.w),
              ),
              child: Text(
                title ?? '',
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
              child: contentWidget == null
                  ? Text(
                      content ?? '',
                      style: TextStyle(
                        fontSize: 28.f,
                        color: Colours.app_font_grey6,
                      ),
                    )
                  : contentWidget!,
            ),
            SizedBox(
              height: 50.h,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 40.w,
                right: 40.w,
              ),
              child: (fn1 != null && fn2 != null)
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: fn1,
                          child: Container(
                            alignment: Alignment.center,
                            width: 260.w,
                            height: 88.h,
                            decoration: BoxDecoration(
                              color: Colours.app_F1_grey,
                              borderRadius: BorderRadius.circular(15.w),
                            ),
                            child: Text(
                              fn1Text!,
                              style: TextStyle(
                                fontSize: 32.f,
                                color: Colours.app_main,
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: fn2,
                          child: Container(
                            alignment: Alignment.center,
                            width: 260.w,
                            height: 88.h,
                            decoration: BoxDecoration(
                              color: Colours.app_main,
                              borderRadius: BorderRadius.circular(15.w),
                            ),
                            child: Text(
                              fn2Text!,
                              style: TextStyle(
                                fontSize: 32.f,
                                color: Colours.app_yellow,
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  : InkWell(
                      onTap: fn1,
                      child: Container(
                        alignment: Alignment.center,
                        width: 290.w,
                        height: 88.h,
                        decoration: BoxDecoration(
                          color: Colours.app_main,
                          borderRadius: BorderRadius.circular(15.w),
                        ),
                        child: Text(
                          fn1Text!,
                          style: TextStyle(
                            fontSize: 32.f,
                            color: Colours.app_yellow,
                          ),
                        ),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
