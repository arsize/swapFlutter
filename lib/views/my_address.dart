/*
 * @Author: Arsize 
 * @Date: 2021-08-25 11:19:40 
 * @Describe: 我的收货地址
 */
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:swapapp/themes/colors.dart';
import 'package:swapapp/utils/adapt.dart';
import 'package:swapapp/widgets/common/app_bar.dart';
import 'package:swapapp/widgets/common/button.dart';

class MyAddress extends StatefulWidget {
  const MyAddress({Key? key}) : super(key: key);

  @override
  _MyAddressState createState() => _MyAddressState();
}

class _MyAddressState extends State<MyAddress> {
  List<int> myAddressList = [];
  @override
  void initState() {
    super.initState();
    for (var i = 0; i < 4; i++) {
      myAddressList.add(i);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(context, title: "收货地址"),
      body: Stack(
        children: [
          ListView.builder(
            itemCount: myAddressList.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed("edit_my_address");
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: Adapt.height(20)),
                  width: double.infinity,
                  color: Colors.white,
                  padding: EdgeInsets.all(
                    Adapt.width(32),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "陈一一",
                                style: TextStyle(
                                  fontSize: Adapt.font(32),
                                  color: Colours.app_main,
                                ),
                              ),
                              SizedBox(
                                width: Adapt.width(30),
                              ),
                              Text(
                                "13244546765",
                                style: TextStyle(
                                  color: Colours.app_font_grey6,
                                  fontSize: Adapt.font(28),
                                ),
                              )
                            ],
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context)
                                  .pushNamed("edit_my_address");
                            },
                            child: Icon(
                              Icons.border_color,
                              size: Adapt.font(30),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Adapt.height(23),
                      ),
                      Text(
                        "深圳市宝安区西乡街道华丰机器人产业园C栋506",
                        style: TextStyle(
                          fontSize: Adapt.font(28),
                          color: Colours.app_font_grey6,
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
          Positioned(
            bottom: Adapt.height(40),
            left: Adapt.width(32),
            child: arBtn(
              fn: () {},
              width: 686,
              text: "新增收货地址",
            ),
          )
        ],
      ),
    );
  }
}
