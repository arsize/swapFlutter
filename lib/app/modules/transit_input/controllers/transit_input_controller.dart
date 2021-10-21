import 'package:get/get.dart';
import 'package:raintree/app/common/apis/check_before_exchange.dart';
import 'package:raintree/app/modules/transit_input/api/get_cabinet_info.dart';
import 'package:raintree/app/store/store.dart';

class TransitInputController extends GetxController {
  List history = [].obs;
  final store = Get.find<StoreController>();

  onSubmitted(value) async {
    var _check = await checkBeforeExchange();
    print("这里");
    print(_check);
    if (_check != null) {
      String? _cabinet = await getCabinetInfoByScan(cabinetId: value);
      if (_cabinet != null) {
        store.updateCabinetDetail(_cabinet);
        Get.offNamed("/exchange-info");
      }
    }
  }
}
