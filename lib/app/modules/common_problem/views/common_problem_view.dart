import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:raintree/app/colors/colors.dart';
import 'package:raintree/app/common/widgets/app_bar.dart';
import 'package:raintree/app/utils/utils.dart';
import '../controllers/common_problem_controller.dart';

class CommonProblemView extends GetView<CommonProblemController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(title: controller.title),
      body: Container(
        padding: EdgeInsets.all(32.w),
        child: Column(
          children: [
            DelayedDisplay(
              delay: Duration(microseconds: 300),
              child: Text(
                controller.content,
                style: TextStyle(
                  fontSize: 30.f,
                  color: Colours.app_main,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
