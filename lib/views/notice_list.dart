/*
 * @Author: Arsize 
 * @Date: 2021-08-25 10:56:59 
 * @Describe: 公告列表
 */

import 'package:flutter/material.dart';
import 'package:swapapp/themes/colors.dart';
import 'package:swapapp/utils/adapt.dart';
import 'package:swapapp/utils/arutil.dart';
import 'package:swapapp/widgets/common/app_bar.dart';

class NoticeList extends StatefulWidget {
  const NoticeList({Key? key}) : super(key: key);

  @override
  _NoticeListState createState() => _NoticeListState();
}

class _NoticeListState extends State<NoticeList> {
  List<int> noticeList = [];
  @override
  void initState() {
    super.initState();
    for (var i = 0; i < 5; i++) {
      noticeList.add(i);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(context, title: "公告消息"),
      body: Padding(
        padding: EdgeInsets.only(
          top: Adapt.height(32),
          left: Adapt.width(32),
          right: Adapt.width(32),
        ),
        child: ListView.builder(
          itemCount: noticeList.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                Navigator.of(context).pushNamed("notice_detail");
              },
              child: Container(
                padding: EdgeInsets.all(Adapt.width(32)),
                margin: EdgeInsets.only(bottom: Adapt.height(32)),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: ArUtil.border(15),
                ),
                child: Column(
                  children: [
                    Text(
                      "6月6日0时至24时系统升级公告",
                      style: TextStyle(
                        color: Colours.app_main,
                        fontSize: Adapt.font(32),
                      ),
                    ),
                    SizedBox(
                      height: Adapt.height(31),
                    ),
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: Colours.app_FD_grey,
                    ),
                    SizedBox(
                      height: Adapt.height(32),
                    ),
                    Text(
                      "为了提供更好的服务，我们将于6月6日0时至24时进行系统升级，升级过程中平台将无法访问，请…",
                      style: TextStyle(
                        color: Colours.app_normal_grey,
                        fontSize: Adapt.font(28),
                      ),
                    ),
                    SizedBox(
                      height: Adapt.font(40),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "5-30 12:00",
                          style: TextStyle(
                            color: Colours.app_normal_grey,
                            fontSize: Adapt.font(28),
                          ),
                        ),
                        Text(
                          "查看全文",
                          style: TextStyle(
                            color: Colours.app_blue,
                            fontSize: Adapt.font(24),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
