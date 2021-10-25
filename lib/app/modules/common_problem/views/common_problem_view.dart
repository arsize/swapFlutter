import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:raintree/app/common/widgets/app_bar.dart';

import '../controllers/common_problem_controller.dart';

class CommonProblemView extends GetView<CommonProblemController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(title: controller.title),
      body: Center(
        child: Text(
          'CommonProblemView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
