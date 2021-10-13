import 'package:get/get.dart';
import 'package:raintree/app/modules/transit_input/api/get_cabinet_info.dart';
import 'package:raintree/global.dart';

class TransitInputController extends GetxController {
  List history = [].obs;

  @override
  void onInit() {
    super.onInit();
    Global.currentPage = this;
  }

  onSubmitted(value) async {
    // var _cabinet = await getCabinetInfoByScan(cabinetId: value);
    // print(_cabinet);
    Get.offNamed("/exchange-info");
  }
}
