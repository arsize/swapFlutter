/*
 * @Author: Arsize 
 * @Date: 2021-08-25 11:20:44 
 * @Describe: 个人中心
 */

import 'package:flutter/material.dart';
import 'package:swapapp/themes/colors.dart';
import 'package:swapapp/utils/adapt.dart';
import 'package:swapapp/widgets/common/app_bar.dart';
import 'package:swapapp/widgets/my/menu_panel.dart';

class MyCenter extends StatefulWidget {
  const MyCenter({Key? key}) : super(key: key);

  @override
  _MyCenterState createState() => _MyCenterState();
}

class _MyCenterState extends State<MyCenter> {
  // 点击事件
  void onTapDown(
    BuildContext context,
    TapDownDetails details,
  ) async {
    var dx = details.globalPosition.dx;
    var dy = details.globalPosition.dy;
    if (dy > Adapt.height(312) && dy < Adapt.height(516)) {
      if (dx > Adapt.width(32) && dx < Adapt.width(250)) {
        // 钱包余额
        Navigator.of(context).pushNamed("wallet");
      } else if (dx > 118 && dx < 219) {
        // 本月换电
        print("本月换电");
      } else if (dx > 227 && dx < 339) {
        // 当前套餐剩余
        print("当前套餐剩余");
      } else {
        return;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(
        context,
        title: "个人中心",
        elevation: 0,
      ),
      body: GestureDetector(
        onTapDown: (TapDownDetails details) {
          onTapDown(context, details);
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  _myInfoHeader(),
                  _myInfoTop(),
                ],
              ),
              SizedBox(
                height: Adapt.height(130),
              ),
              MenuPanel(
                warp: false,
                titleName: '商城订单',
                menuList: [
                  _menuItem("images/my_icons01.png", "待付款", ""),
                  _menuItem("images/my_icons02.png", "待发货", ""),
                  _menuItem("images/my_icons03.png", "待收货", ""),
                  _menuItem("images/my_icons04.png", "全部订单", ""),
                ],
              ),
              SizedBox(
                height: Adapt.height(32),
              ),
              MenuPanel(
                warp: true,
                titleName: '常用功能',
                menuList: [
                  _menuItem("images/my_icons05.png", "我的车辆", "my_vehicle"),
                  _menuItem("images/my_icons06.png", "服务网点", ""),
                  _menuItem("images/my_icons07.png", "客服中心", ""),
                  _menuItem("images/my_icons08.png", "设置", "setting"),
                  _menuItem("images/my_icons09.png", "公告消息", "notice_list"),
                  _menuItem("images/my_icons10.png", "更多", "more"),
                  _menuItem("images/my_icons11.png", "管理员", ""),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _myInfoTop() {
    return Padding(
      padding: EdgeInsets.only(
        left: Adapt.width(32),
        right: Adapt.width(32),
        top: Adapt.width(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _myInfoAvatar(),
          _myQRcode(),
        ],
      ),
    );
  }

  Widget _myQRcode() {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed("myQrcode");
      },
      child: Image(
        width: Adapt.width(80),
        height: Adapt.height(80),
        image: AssetImage("images/my_qrcode.png"),
      ),
    );
  }

  Widget _myInfoAvatar() {
    return Container(
      width: Adapt.width(400),
      height: Adapt.height(95),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed("setting");
        },
        child: Row(
          children: [
            Image(
              width: Adapt.width(112),
              height: Adapt.height(112),
              image: AssetImage("images/my_avatar_default.png"),
            ),
            SizedBox(
              width: Adapt.width(24),
            ),
            _myUserInfo()
          ],
        ),
      ),
    );
  }

  Widget _myUserInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "陈龙",
          style: TextStyle(
            fontSize: Adapt.font(36),
            color: Colors.white,
          ),
        ),
        Text(
          "130xxxx5678",
          style: TextStyle(
            fontSize: Adapt.font(28),
            color: Colors.white.withOpacity(0.8),
          ),
        ),
      ],
    );
  }

  Widget _myInfoHeader() {
    return Container(
      width: double.infinity,
      height: Adapt.height(260),
      color: Colours.app_main,
      child: Padding(
        padding: EdgeInsets.only(
          left: Adapt.width(32),
          right: Adapt.width(32),
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: FractionalTranslation(
            translation: Offset(0, 0.5),
            child: Container(
              padding: EdgeInsets.only(
                left: Adapt.width(28),
                right: Adapt.width(28),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(6),
                ),
              ),
              width: double.infinity,
              height: Adapt.height(204),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _infoItem("钱包余额(元)"),
                  Container(
                    width: Adapt.width(2),
                    height: Adapt.height(80),
                    color: Colours.app_light_grey,
                  ),
                  _infoItem("本月换电(次)"),
                  Container(
                    width: Adapt.width(2),
                    height: Adapt.height(80),
                    color: Colours.app_light_grey,
                  ),
                  _infoItem("当前套餐剩余(次)"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  //钱包余额 | 本月换电 | 当前套餐剩余
  Widget _infoItem(String str) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "129.00",
          style: TextStyle(
            fontSize: Adapt.font(36),
            fontWeight: FontWeight.w500,
            color: Colours.app_main,
          ),
        ),
        SizedBox(
          height: Adapt.height(12),
        ),
        Text(
          str,
          style: TextStyle(
            fontSize: Adapt.font(24),
            color: Colours.app_font_grey,
          ),
        )
      ],
    );
  }

  Widget _menuItem(icon, itemText, route) {
    return Container(
      width: Adapt.width(128),
      margin: EdgeInsets.only(top: Adapt.height(30)),
      child: Center(
        child: InkWell(
          onTap: () {
            print(route);
            Navigator.of(context).pushNamed(route);
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                width: Adapt.width(64),
                height: Adapt.height(64),
                image: AssetImage(icon),
              ),
              SizedBox(
                height: Adapt.height(12),
              ),
              Text(
                itemText,
                style: TextStyle(
                  fontSize: Adapt.font(24),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
