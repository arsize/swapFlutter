/*
 * @Author: Arsize 
 * @Date: 2021-08-24 14:42:12 
 * @Describe: 弹窗组件
 */
import 'package:flutter/material.dart';
import 'package:swapapp/themes/colors.dart';
import 'package:swapapp/utils/adapt.dart';

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
        width: this.width ?? Adapt.width(640),
        height: this.height ?? Adapt.height(390),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: this.round != true
              ? BorderRadius.zero
              : BorderRadius.circular(Adapt.width(16)),
        ),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              width: this.width ?? Adapt.width(640),
              height: Adapt.height(100),
              decoration: BoxDecoration(
                color: Colours.app_dialog_title,
                borderRadius: this.round != true
                    ? BorderRadius.zero
                    : BorderRadius.circular(Adapt.width(16)),
              ),
              child: Text(
                this.title,
                style: TextStyle(
                  fontSize: Adapt.font(32),
                  color: Colours.app_main,
                ),
              ),
            ),
            SizedBox(
              height: Adapt.height(56),
            ),
            Center(
              child: Text(
                this.content,
                style: TextStyle(
                  fontSize: Adapt.font(28),
                  color: Colours.app_font_grey6,
                ),
              ),
            ),
            SizedBox(
              height: Adapt.height(56),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: Adapt.width(40),
                right: Adapt.width(40),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: this.fn1,
                    child: Container(
                      alignment: Alignment.center,
                      width: Adapt.width(260),
                      height: Adapt.height(88),
                      decoration: BoxDecoration(
                        color: Colours.app_F1_grey,
                        borderRadius: BorderRadius.circular(Adapt.width(15)),
                      ),
                      child: Text(
                        this.cancelText,
                        style: TextStyle(
                          fontSize: Adapt.font(32),
                          color: Colours.app_main,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: this.fn2,
                    child: Container(
                      alignment: Alignment.center,
                      width: Adapt.width(260),
                      height: Adapt.height(88),
                      decoration: BoxDecoration(
                        color: Colours.app_main,
                        borderRadius: BorderRadius.circular(Adapt.width(15)),
                      ),
                      child: Text(
                        this.confirmText,
                        style: TextStyle(
                          fontSize: Adapt.font(32),
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
