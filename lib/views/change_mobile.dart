/*
 * @Author: Arsize 
 * @Date: 2021-08-24 16:13:07 
 * @Describe: 修改手机号
 */
import 'package:flutter/material.dart';
import 'package:swapapp/themes/colors.dart';
import 'package:swapapp/utils/adapt.dart';
import 'package:swapapp/widgets/common/app_bar.dart';
import 'package:swapapp/widgets/common/common_wigets.dart';

class ChangeMobilePhone extends StatefulWidget {
  const ChangeMobilePhone({Key? key}) : super(key: key);

  @override
  _ChangeMobilePhoneState createState() => _ChangeMobilePhoneState();
}

class _ChangeMobilePhoneState extends State<ChangeMobilePhone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(
        context,
        title: "修改手机号",
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(Adapt.width(32)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "当前手机号：130000000",
              style: TextStyle(
                fontSize: Adapt.font(28),
                color: Colours.app_font_grey6,
              ),
            ),
            SizedBox(
              height: Adapt.height(32),
            ),
            SizedBox(
              width: double.infinity,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "请输入新手机号",
                  hintStyle: TextStyle(
                    color: Colours.app_icon_right,
                    fontSize: Adapt.font(30),
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            Container(
              height: 1,
              color: Colours.app_light_grey,
            ),
            SizedBox(
              width: double.infinity,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "请输入验证码",
                  hintStyle: TextStyle(
                    color: Colours.app_icon_right,
                    fontSize: Adapt.font(30),
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            Container(
              height: 1,
              color: Colours.app_light_grey,
            ),
            SizedBox(
              height: Adapt.height(80),
            ),
            Container(
              child: arBtn(
                fn: () {},
                text: "确定",
                width: 686,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
