import 'package:get/get.dart';
import 'package:raintree/app/common/apis/check_before_exchange.dart';
import 'package:raintree/app/common/widgets/common_wigets.dart';
import 'package:raintree/app/modules/transit_input/api/get_cabinet_info.dart';
import 'package:raintree/app/store/store.dart';
import 'package:raintree/app/utils/utils.dart';

class TransitInputController extends GetxController {
  List history = [].obs;
  final store = Get.find<StoreController>();

  @override
  void onInit() async {
    history = await LoacalStorage().getJSON("transit_history");
    update();
    super.onInit();
  }

  onSubmitted(value) async {
    var _check = await checkBeforeExchange();

    if (_check != null) {
      String? _cabinet = await getCabinetInfoByScan(cabinetId: value);
      Set<dynamic> _dedu = {};
      _dedu.addAll(history);
      _dedu.add(value);
      history = _dedu.toList();
      LoacalStorage().setJSON("transit_history", history);
      update();
      if (_cabinet != null) {
        store.updateCabinetDetail(_cabinet);

        Get.offNamed("/exchange-info");
      }
    }
  }

  delHistory() {
    arDialog(
      fn1: () {
        Get.back();
      },
      fn1Text: "取消",
      fn2: () {
        LoacalStorage().remove("transit_history");
        history = [];
        update();
        Get.back();
      },
      fn2Text: "确定",
      content: "是否清除历史记录？",
      context: Get.context,
    );
  }
}
