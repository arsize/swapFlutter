import 'package:get/get.dart';
import 'package:raintree/app/common/apis/check_before_exchange.dart';
import 'package:raintree/app/entities/exchange_fee/exchange_fee.dart';
import 'package:raintree/app/modules/exchange_info/apis/exchange_charging.dart';
import 'package:raintree/app/modules/exchange_info/apis/get_fee_exchange.dart';
import 'package:raintree/app/store/store.dart';

class ExchangeInfoController extends GetxController {
  final store = Get.find<StoreController>();

  RxBool switchValue = false.obs;
  ExchangeFee? exchangeFee = ExchangeFee();

  @override
  void onInit() {
    super.onInit();
    getFee();
  }

  /// 获取收费规则
  getFee() async {
    var _fee = await getFeeExchange();
    exchangeFee = ExchangeFee.fromJson(_fee);
  }

  @override
  void onClose() {}

  changeSwitch(value) {
    switchValue.value = value;
  }

  // 开始换电
  beginExchange() async {
    var _checkResult = await checkBeforeExchange();
    if (_checkResult != null) {
      var _result = await exchangeCharging(
        cabinetdid: store.cabinetDetail.data?.cabinetDid,
      );
      if (_result != null) {
        var orderNo = _result["data"]["orderNo"];
        Get.offNamed("/serving?orderNo=$orderNo");
      }
    }
  }
}
