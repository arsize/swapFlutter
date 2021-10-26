import 'package:get/get.dart';

import '../controllers/anomalies_alarm_controller.dart';

class AnomaliesAlarmBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AnomaliesAlarmController>(
      () => AnomaliesAlarmController(),
    );
  }
}
