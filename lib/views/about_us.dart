/*
 * @Author: Arsize 
 * @Date: 2021-08-24 15:23:48 
 * @Describe: 关于我们
 */

import 'package:flutter/material.dart';
import 'package:swapapp/themes/colors.dart';
import 'package:swapapp/utils/adapt.dart';
import 'package:swapapp/widgets/common/app_bar.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(
        context,
        title: "关于我们",
      ),
      body: Stack(
        children: [
          Positioned(
            top: Adapt.height(84),
            left: Adapt.width(300),
            child: Column(
              children: [
                Image(
                  image: AssetImage("images/app_info_logo.png"),
                  width: Adapt.width(152),
                  height: Adapt.width(152),
                ),
                SizedBox(
                  height: Adapt.height(30),
                ),
                Text(
                  "V1.5.5",
                  style: TextStyle(
                    fontSize: Adapt.font(28),
                    color: Colours.app_main,
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: Adapt.height(400),
            left: 0,
            right: 0,
            child: Container(
              child: Column(
                children: [
                  appInfoItems(
                      label: "官方网站", value: "https://www.smartchuxing.com"),
                  appInfoItems(label: "联系电话", value: "400-660-2839"),
                  appInfoItems(label: "电子邮箱", value: "business@wondware.com"),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: Adapt.height(37),
            child: Text(
              "深圳市骑换科技有限公司",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: Adapt.font(24),
                color: Colours.app_normal_grey,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget appInfoItems({label, value}) {
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
          Adapt.width(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: TextStyle(
                fontSize: Adapt.font(30),
                color: Colours.app_main,
              ),
            ),
            Text(
              value,
              style: TextStyle(
                fontSize: Adapt.font(30),
                color: Colours.app_font_grey6,
              ),
            )
          ],
        ),
      ),
    );
  }
}
