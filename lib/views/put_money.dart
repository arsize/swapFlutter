/*
 * @Author: Arsize 
 * @Date: 2021-08-25 11:20:26 
 * @Describe: 余额充值
 */

import 'package:flutter/material.dart';
import 'package:swapapp/themes/colors.dart';
import 'package:swapapp/utils/adapt.dart';
import 'package:swapapp/utils/arutil.dart';
import 'package:swapapp/widgets/common/app_bar.dart';

class PutMoney extends StatefulWidget {
  const PutMoney({Key? key}) : super(key: key);

  @override
  _PutMoneyState createState() => _PutMoneyState();
}

class _PutMoneyState extends State<PutMoney> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(
        context,
        title: "余额充值",
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            color: Colours.app_bg_grey,
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(Adapt.width(32)),
              height: Adapt.height(562),
              color: Colors.white,
              child: _selectMoney(),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: Adapt.height(150),
            child: Container(
              child: Column(
                children: [
                  Text(
                    "我已认真阅读并同意《充值协议》",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: Adapt.font(24),
                    ),
                  ),
                  SizedBox(
                    height: Adapt.height(13),
                  ),
                  Text(
                    "一经充值，不支持退款、提现，请合理选择充值金额",
                    style: TextStyle(
                      fontSize: Adapt.font(24),
                      color: Colours.app_normal_grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0.0, 15.0), //阴影xy轴偏移量
                    blurRadius: 15.0, //阴影模糊程度
                    spreadRadius: 1.0 //阴影扩散程度
                    ),
              ]),
              height: Adapt.height(112),
              padding: EdgeInsets.only(
                left: Adapt.width(32),
                right: Adapt.width(32),
                top: Adapt.height(12),
                bottom: Adapt.height(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "0.00元",
                    style: TextStyle(
                      color: Colours.app_orange_red,
                      fontSize: Adapt.font(32),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: Adapt.width(280),
                    height: Adapt.width(88),
                    decoration: BoxDecoration(
                      color: Colours.app_main,
                      borderRadius: ArUtil.border(15),
                    ),
                    child: Text(
                      "立即充值",
                      style: TextStyle(
                        fontSize: Adapt.font(32),
                        color: Colours.app_yellow,
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

  Widget _selectMoney() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "选择充值金额",
              style: TextStyle(
                fontSize: Adapt.font(32),
                color: Colours.app_font_grey,
              ),
            ),
            Text(
              "当前余额：0.00元",
              style: TextStyle(
                fontSize: Adapt.font(28),
                color: Colours.app_font_grey,
              ),
            )
          ],
        ),
        SizedBox(
          height: Adapt.height(40),
        ),
        Wrap(
          spacing: Adapt.width(20),
          children: _getWrapList(),
        )
      ],
    );
  }

  List<Widget> _getWrapList() {
    List arr = [100, 50, 20, 10, 5];
    return arr
        .map(
          (e) => Container(
            margin: EdgeInsets.only(
              bottom: Adapt.width(20),
              right: Adapt.width(10),
            ),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colours.app_font_grey,
                width: Adapt.width(2),
                style: BorderStyle.solid,
              ),
              borderRadius: ArUtil.border(8),
            ),
            width: Adapt.width(205),
            height: Adapt.width(168),
            child: Text("$e元"),
          ),
        )
        .toList();
  }
}
