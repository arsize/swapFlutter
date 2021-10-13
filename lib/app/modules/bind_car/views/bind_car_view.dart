import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/bind_car_controller.dart';

class BindCarView extends GetView<BindCarController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BindCarView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'BindCarView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
