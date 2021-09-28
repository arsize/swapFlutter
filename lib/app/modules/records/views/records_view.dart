import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/records_controller.dart';

class RecordsView extends GetView<RecordsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RecordsView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'RecordsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
