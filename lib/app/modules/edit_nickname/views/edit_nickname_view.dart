import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:swapapp/app/colors/colors.dart';
import 'package:swapapp/app/utils/utils.dart';

import '../controllers/edit_nickname_controller.dart';

class EditNicknameView extends GetView<EditNicknameController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "修改昵称",
          style: TextStyle(
            fontSize: 36.f,
          ),
        ),
        centerTitle: true,
        brightness: Brightness.dark,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 32.w),
            alignment: Alignment.center,
            child: InkWell(
              onTap: () {},
              child: Text("完成"),
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            color: Colors.white,
            width: double.infinity,
            height: 133.h,
            child: Padding(
              padding: EdgeInsets.only(
                left: 32.w,
                right: 32.w,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 150.w,
                    child: Text(
                      "昵称",
                      style: TextStyle(
                        color: Colours.app_font_grey6,
                        fontSize: 28.f,
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      maxLength: 40,
                      decoration: InputDecoration(
                        counterText: '',
                        hintText: "请输入1~40个字符",
                        hintStyle: TextStyle(
                          fontSize: 28.f,
                          color: Colours.app_icon_right,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
