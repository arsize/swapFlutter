import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:raintree/app/modules/bind_car/api/query_vehicle_details.dart';

class BindCarController extends GetxController {
  late final TextEditingController carNumController;

  String? name;
  String? mobile;
  RxString numberPlate = ''.obs;
  @override
  void onInit() {
    super.onInit();
    carNumController = TextEditingController();
    name = Get.parameters['name'] ?? '';
    mobile = Get.parameters['mobile'] ?? '';
  }

  @override
  void dispose() {
    carNumController.dispose();
    super.dispose();
  }

  void inputOnchange(text) async {
    var _value = await queryVehicleDetails(numberPlate: text);
    print(_value);
  }

  void submitTo() {
    Get.offNamed("/bind-success");
  }

  @override
  void onClose() {}
}
