import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:raintree/app/store/store.dart';

import '../controllers/user_combo_controller.dart';

class UserComboView extends GetView<UserComboController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UserComboView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child: GetBuilder<UserComboController>(builder: (_) {
              return Text(
                _.text.age.toString(),
                style: TextStyle(fontSize: 20),
              );
            }),
          ),
          InkWell(
            onTap: () {
              controller.changeTo();
            },
            child: Container(
              width: 100,
              height: 100,
              child: Text("点击"),
            ),
          )
        ],
      ),
    );
  }
}
