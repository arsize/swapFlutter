import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:raintree/app/common/widgets/app_bar.dart';

import '../controllers/bind_success_controller.dart';

class BindSuccessView extends GetView<BindSuccessController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(title: "绑定成功"),
      body: Center(
        child: Text(
          'BindSuccessView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
