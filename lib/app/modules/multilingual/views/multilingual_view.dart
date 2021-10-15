/*
 * @Author: Arsize 
 * @Date: 2021-09-29 15:27:31 
 * @Describe: 多语言
 */
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:raintree/app/colors/colors.dart';
import 'package:raintree/app/common/widgets/app_bar.dart';
import 'package:raintree/app/store/store.dart';
import 'package:raintree/app/utils/utils.dart';

import '../controllers/multilingual_controller.dart';

class MultilingualView extends GetView<MultilingualController> {
  @override
  Widget build(BuildContext context) {
    final store = Get.find<StoreController>();
    return Scaffold(
      appBar: defaultAppBar(title: "多语言"),
      body: Container(
        padding: EdgeInsets.only(
          top: 20.w,
          left: 32.w,
          right: 32.w,
        ),
        color: Colors.white,
        child: Column(
          children: [
            InkWell(
              onTap: () {
                store.changeLanguage("zh_CN");
              },
              child: Container(
                padding: EdgeInsets.only(
                  left: 32.w,
                  right: 32.w,
                ),
                height: 149.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "简体中文",
                      style: TextStyle(
                        fontSize: 30.f,
                        color: Colours.app_main,
                      ),
                    ),
                    Offstage(
                      offstage: store.language.value.toString() != 'zh_CN',
                      child: Icon(Icons.check),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 1,
              color: Colours.app_bg_grey,
            ),
            InkWell(
              onTap: () {
                store.changeLanguage("en_US");
              },
              child: Container(
                padding: EdgeInsets.only(
                  left: 32.w,
                  right: 32.w,
                ),
                height: 149.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "English",
                      style: TextStyle(
                        fontSize: 30.f,
                        color: Colours.app_main,
                      ),
                    ),
                    Offstage(
                      offstage: store.language.value.toString() != 'en_US',
                      child: Icon(Icons.check),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
