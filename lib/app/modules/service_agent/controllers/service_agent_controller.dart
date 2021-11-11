import 'package:get/get.dart';
import 'package:raintree/app/entities/service_agent_model/service_agent_model.dart';
import 'package:raintree/app/modules/service_agent/apis/get_battery_business.dart';

class ServiceAgentController extends GetxController {
  ServiceAgentModel serviceAgent = ServiceAgentModel();

  int selectedIndex = 0;
  @override
  void onInit() {
    super.onInit();
    getAgentList();
  }

  void getAgentList() async {
    var _result = await getBatteryBusinessList();
    serviceAgent = ServiceAgentModel.fromJson(_result);
    update();
  }

  void selectAgentItem(value) {
    selectedIndex = value;
    update();
  }

  @override
  void onClose() {}
}
