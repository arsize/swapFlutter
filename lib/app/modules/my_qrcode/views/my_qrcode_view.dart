import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/my_qrcode_controller.dart';

class MyQrcodeView extends GetView<MyQrcodeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyQrcodeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'MyQrcodeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
