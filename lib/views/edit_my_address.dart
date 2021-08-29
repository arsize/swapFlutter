/*
 * @Author: Arsize 
 * @Date: 2021-08-25 11:18:47 
 * @Describe: 修改我的收货地址
 */

import 'package:flutter/material.dart';
import 'package:swapapp/themes/colors.dart';
import 'package:swapapp/utils/utils.dart';
import 'package:swapapp/widgets/common/app_bar.dart';
import 'package:swapapp/widgets/common/common_wigets.dart';

class EditMyAddress extends StatefulWidget {
  const EditMyAddress({Key? key}) : super(key: key);

  @override
  _EditMyAddressState createState() => _EditMyAddressState();
}

class _EditMyAddressState extends State<EditMyAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "编辑收货地址",
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
        actions: [
          Container(
            padding: EdgeInsets.only(right: Adapt.width(32)),
            alignment: Alignment.center,
            child: InkWell(
              onTap: () {},
              child: Text("删除"),
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                color: Colors.white,
                width: double.infinity,
                height: Adapt.width(132),
                padding: EdgeInsets.only(
                  left: Adapt.width(32),
                  right: Adapt.width(32),
                ),
                child: Row(
                  children: [
                    Container(
                      constraints: BoxConstraints(minWidth: Adapt.width(132)),
                      child: Text(
                        "收货人：",
                        style: TextStyle(
                          fontSize: Adapt.font(28),
                          color: Colours.app_normal_grey,
                        ),
                      ),
                    ),
                    Text(
                      "陈一一",
                      style: TextStyle(
                        color: Colours.app_main,
                        fontSize: Adapt.font(28),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 0.5,
                width: Adapt.width(685),
                color: Colours.app_E1_grey,
              ),
              Container(
                color: Colors.white,
                width: double.infinity,
                height: Adapt.width(132),
                padding: EdgeInsets.only(
                  left: Adapt.width(32),
                  right: Adapt.width(32),
                ),
                child: Row(
                  children: [
                    Container(
                      constraints: BoxConstraints(minWidth: Adapt.width(132)),
                      child: Text(
                        "手机号码：",
                        style: TextStyle(
                          fontSize: Adapt.font(28),
                          color: Colours.app_normal_grey,
                        ),
                      ),
                    ),
                    Text(
                      "13687767897",
                      style: TextStyle(
                        color: Colours.app_main,
                        fontSize: Adapt.font(28),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 0.5,
                width: Adapt.width(685),
                color: Colours.app_E1_grey,
              ),
              Container(
                color: Colors.white,
                width: double.infinity,
                height: Adapt.width(132),
                padding: EdgeInsets.only(
                  left: Adapt.width(32),
                  right: Adapt.width(32),
                ),
                child: Row(
                  children: [
                    Container(
                      constraints: BoxConstraints(minWidth: Adapt.width(132)),
                      child: Text(
                        "所在地区：",
                        style: TextStyle(
                          fontSize: Adapt.font(28),
                          color: Colours.app_normal_grey,
                        ),
                      ),
                    ),
                    Text(
                      "广东省深圳市宝安区",
                      style: TextStyle(
                        color: Colours.app_main,
                        fontSize: Adapt.font(28),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 0.5,
                width: Adapt.width(685),
                color: Colours.app_E1_grey,
              ),
              Container(
                color: Colors.white,
                width: double.infinity,
                height: Adapt.width(132),
                padding: EdgeInsets.only(
                  left: Adapt.width(32),
                  right: Adapt.width(32),
                ),
                child: Row(
                  children: [
                    Container(
                      constraints: BoxConstraints(minWidth: Adapt.width(132)),
                      child: Text(
                        "详细地址：",
                        style: TextStyle(
                          fontSize: Adapt.font(28),
                          color: Colours.app_normal_grey,
                        ),
                      ),
                    ),
                    Text(
                      "西乡街道南昌第二新村东一巷3号",
                      style: TextStyle(
                        color: Colours.app_main,
                        fontSize: Adapt.font(28),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: Adapt.height(40),
            left: Adapt.width(32),
            child: arBtn(
              fn: () {},
              width: 686,
              text: "保存",
            ),
          )
        ],
      ),
    );
  }
}
