import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:raintree/app/entities/entities.dart';
import 'package:raintree/app/modules/bind_car/api/confirm_binding.dart';
import 'package:raintree/app/modules/bind_car/api/query_vehicle_details.dart';
import 'package:raintree/app/store/store.dart';

class BindCarController extends GetxController {
  // 控制器
  final store = Get.find<StoreController>();
  late final TextEditingController carNumController;

  String? name;
  String? mobile;

  Rx<CarModel> carModel = CarModel().obs;
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
    carModel.value = CarModel.fromJson(_value);
  }

  void submitTo() async {
    if (name == '') {
      EasyLoading.showInfo('请填写紧急联系人姓名');
      return;
    }
    if (mobile == '') {
      EasyLoading.showInfo('请填写紧急联系人手机');
      return;
    }
    if (carModel.value.data?.vehicleId == null) {
      EasyLoading.showInfo('请录入正确的车辆编号');
      return;
    }
    var _result = await confirmBindingVehicle(
      mobile: mobile,
      name: name,
      numberPlate: carModel.value.data!.numberPlate,
    );
    if (_result["code"] == 200) {
      store.finishBindVehicle();
      Get.offNamed("/bind-success");
    }
  }

  @override
  void onClose() {}
}
