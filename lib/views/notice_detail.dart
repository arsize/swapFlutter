/*
 * @Author: Arsize 
 * @Date: 2021-08-25 10:43:50 
 * @Describe: 公告详情
 */

import 'package:flutter/material.dart';
import 'package:swapapp/themes/colors.dart';
import 'package:swapapp/utils/adapt.dart';
import 'package:swapapp/widgets/common/app_bar.dart';

class Notice extends StatelessWidget {
  const Notice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: defaultAppBar(context, title: "公告详情"),
        body: Container(
          padding: EdgeInsets.all(Adapt.width(32)),
          color: Colors.white,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "6月6日0时至24时系统升级公告",
                style: TextStyle(
                  color: Colours.app_main,
                  fontSize: Adapt.font(32),
                ),
              ),
              SizedBox(
                height: Adapt.height(32),
              ),
              Text(
                "5-30 12:00",
                style: TextStyle(
                  color: Colours.app_normal_grey,
                ),
              ),
              SizedBox(
                height: Adapt.height(32),
              ),
              Text(
                "为提供更好的服务，我们将于6月6日0时至24时进行系统升级，升级过程中平台将无法访问，请提前做好充换电准备，若提前完成升级会及时通知大家，升级过程中给大家带来的不便敬请谅解。",
                style: TextStyle(
                  fontSize: Adapt.font(28),
                  color: Colours.app_main,
                ),
              )
            ],
          ),
        ));
  }
}
