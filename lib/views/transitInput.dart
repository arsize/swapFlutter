/*
 * @Author: Arsize 
 * @Date: 2021-08-24 18:20:24 
 * @Describe: 输入电柜ID
 */

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_verification_box/verification_box.dart';
import 'package:swapapp/themes/colors.dart';
import 'package:swapapp/utils/adapt.dart';
import 'package:swapapp/utils/arutil.dart';
import 'package:swapapp/widgets/common/app_bar.dart';

class TransitInput extends StatefulWidget {
  const TransitInput({Key? key}) : super(key: key);

  @override
  _TransitInputState createState() => _TransitInputState();
}

class _TransitInputState extends State<TransitInput> {
  List _history = [];
  @override
  void initState() {
    super.initState();
    for (var i = 0; i < 6; i++) {
      _history.add(i);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(context, title: "输入电柜ID"),
      body: Padding(
        padding: EdgeInsets.all(Adapt.width(32)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "电柜ID",
                  style: TextStyle(
                    color: Colours.app_main,
                    fontSize: Adapt.font(30),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "切换扫码",
                    style: TextStyle(
                      color: Colours.app_green,
                      fontSize: Adapt.font(28),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: Adapt.height(14),
            ),
            Container(
              height: Adapt.width(100),
              child: VerificationBox(
                count: 6,
                borderWidth: 1,
                borderRadius: 12,
                unfocus: false,
                focusBorderColor: Colours.app_yellow,
                onSubmitted: (value) {
                  print('$value');
                },
              ),
            ),
            Image(
              width: Adapt.width(686),
              height: Adapt.height(208),
              image: AssetImage("images/input_sub_info.png"),
            ),
            SizedBox(
              height: Adapt.height(16),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: Adapt.height(16)),
                width: double.infinity,
                color: Colours.app_bg_grey,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "历史记录",
                          style: TextStyle(
                            fontSize: Adapt.font(28),
                            color: Colours.app_normal_grey,
                          ),
                        ),
                        Icon(
                          Icons.delete,
                          size: Adapt.font(35),
                          color: Colours.app_normal_grey,
                        )
                      ],
                    ),
                    SizedBox(
                      height: Adapt.height(32),
                    ),
                    Wrap(
                      alignment: WrapAlignment.spaceBetween,
                      spacing: Adapt.width(22),
                      runSpacing: Adapt.height(22),
                      children: _getHistoryItem(),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  // 历史记录
  List<Widget> _getHistoryItem() {
    return _history
        .map(
          (e) => Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: ArUtil.border(6),
            ),
            alignment: Alignment.center,
            width: Adapt.width(214),
            height: Adapt.height(80),
            child: Text(
              e.toString(),
              style: TextStyle(
                color: Colours.app_normal_grey,
                fontSize: Adapt.font(28),
              ),
            ),
          ),
        )
        .toList();
  }
}
