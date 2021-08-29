/*
 * @Author: Arsize 
 * @Date: 2021-08-25 11:22:09 
 * @Describe: 多语言
 */
import 'package:flutter/material.dart';
import 'package:swapapp/themes/colors.dart';
import 'package:swapapp/utils/adapt.dart';
import 'package:swapapp/utils/arutil.dart';
import 'package:swapapp/widgets/common/app_bar.dart';

class Language extends StatefulWidget {
  const Language({Key? key}) : super(key: key);

  @override
  _LanguageState createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(
        context,
        title: "多语言",
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: Adapt.width(20),
          left: Adapt.width(32),
          right: Adapt.width(32),
        ),
        color: Colors.white,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(
                left: Adapt.width(32),
                right: Adapt.width(32),
              ),
              height: Adapt.width(149),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "简体中文",
                    style: TextStyle(
                      fontSize: Adapt.font(30),
                      color: Colours.app_main,
                    ),
                  ),
                  Icon(Icons.check)
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 1,
              color: Colours.app_bg_grey,
            ),
            Container(
              padding: EdgeInsets.only(
                left: Adapt.width(32),
                right: Adapt.width(32),
              ),
              height: Adapt.width(149),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "English",
                    style: TextStyle(
                      fontSize: Adapt.font(30),
                      color: Colours.app_main,
                    ),
                  ),
                  Icon(Icons.check)
                ],
              ),
            ),
            Container(
              height: Adapt.width(98),
              decoration: BoxDecoration(
                color: Colours.app_main,
                borderRadius: ArUtil.border(
                  Adapt.width(15),
                ),
              ),
              alignment: Alignment.center,
              child: Text(
                "保存",
                style: TextStyle(
                  fontSize: Adapt.font(32),
                  color: Colours.app_yellow,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
