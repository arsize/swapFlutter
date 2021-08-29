/*
 * @Author: Arsize 
 * @Date: 2021-08-24 15:02:11 
 * @Describe: 更多
 */

import 'package:flutter/material.dart';
import 'package:swapapp/themes/colors.dart';
import 'package:swapapp/utils/adapt.dart';
import 'package:swapapp/widgets/common/app_bar.dart';

class More extends StatelessWidget {
  const More({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(
        context,
        title: "更多",
      ),
      body: Column(
        children: [
          _itemMenu("关于我们", context, route: "aboutus"),
          _itemMenu("用户协议", context, route: "user_agreement"),
          _itemMenu("充值协议", context, route: "deposit_agreement"),
          _itemMenu("交货政策", context, route: ""),
          _itemMenu("隐私政策", context, route: ""),
        ],
      ),
    );
  }

  Widget _itemMenu(str, context, {route}) {
    return InkWell(
      child: Container(
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
          padding: EdgeInsets.only(
            top: Adapt.height(28),
            bottom: Adapt.height(28),
            left: Adapt.width(32),
            right: Adapt.width(32),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                str,
                style: TextStyle(
                  fontSize: Adapt.font(30),
                  color: Colours.app_main,
                ),
              ),
              Icon(
                Icons.keyboard_arrow_right,
                color: Colours.app_icon_right,
              ),
            ],
          ),
        ),
      ),
      onTap: () {
        print(route);
        if (route != null && route != "") {
          Navigator.of(context).pushNamed(route);
        }
      },
    );
  }
}
