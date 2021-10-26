import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:raintree/app/common/widgets/app_bar.dart';

import '../controllers/anomalies_alarm_controller.dart';

class AnomaliesAlarmView extends GetView<AnomaliesAlarmController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(title: "异常告警"),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            children: [],
          )
        ],
      ),
    );
  }
}
