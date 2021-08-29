/*
 * @Author: Arsize 
 * @Date: 2021-08-25 11:22:35 
 * @Describe: 修改昵称
 */
import 'package:flutter/material.dart';
import 'package:swapapp/themes/colors.dart';
import 'package:swapapp/utils/adapt.dart';

class ChangeNickName extends StatefulWidget {
  const ChangeNickName({Key? key}) : super(key: key);

  @override
  _ChangeNickNameState createState() => _ChangeNickNameState();
}

class _ChangeNickNameState extends State<ChangeNickName> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "设置",
          style: TextStyle(
            fontSize: Adapt.font(36),
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [getBtn()],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            color: Colors.white,
            width: double.infinity,
            height: Adapt.height(133),
            child: Padding(
              padding: EdgeInsets.only(
                left: Adapt.width(32),
                right: Adapt.width(32),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: Adapt.width(150),
                    child: Text(
                      "昵称",
                      style: TextStyle(
                        color: Colours.app_font_grey6,
                        fontSize: Adapt.font(28),
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
                          fontSize: Adapt.font(28),
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

  Widget getBtn() {
    return Container(
      padding: EdgeInsets.only(right: Adapt.width(32)),
      alignment: Alignment.center,
      child: InkWell(
        onTap: () {},
        child: Text("完成"),
      ),
    );
  }
}
