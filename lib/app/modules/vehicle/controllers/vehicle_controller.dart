import 'package:get/get.dart';
import 'package:raintree/app/entities/entities.dart';
import 'package:raintree/app/modules/vehicle/apis/user_vehicle.dart';

class VehicleController extends GetxController {
  Rx<CarModel> myCarModel = CarModel().obs;
  @override
  void onInit() async {
    super.onInit();
    var _value = await userVehicle();
    myCarModel.value = CarModel.fromJson(_value);
  }

  @override
  void onClose() {}
}
