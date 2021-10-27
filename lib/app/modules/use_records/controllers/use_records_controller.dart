import 'package:get/get.dart';
import 'package:raintree/app/entities/exchange_record_model/exchange_record_model.dart';
import 'package:raintree/app/modules/use_records/apis/exchange_record.dart';

class UseRecordsController extends GetxController {
  ExchangeRecordModel exchangeRecord = ExchangeRecordModel();
  @override
  void onInit() {
    super.onInit();
    getExchangeRecord();
  }

  /// 获取用户换电记录
  void getExchangeRecord() async {
    var _result = await chargingAndExchangeRecord();
    if (_result != null) {
      exchangeRecord = ExchangeRecordModel.fromJson(_result);
    }
    update();
  }

  @override
  void onClose() {}
}
