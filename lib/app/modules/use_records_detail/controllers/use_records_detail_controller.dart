import 'package:get/get.dart';
import 'package:raintree/app/entities/record_detail_model/record_detail_model.dart';
import 'package:raintree/app/modules/use_records_detail/apis/exchange_record_detail.dart';

class UseRecordsDetailController extends GetxController {
  String orderNo = '';
  RecordDetailModel exchangeRecordDetail = RecordDetailModel();
  @override
  void onInit() {
    super.onInit();
    orderNo = Get.parameters["orderNo"]!;
    getRecordDetail();
  }

  void getRecordDetail() async {
    var _result = await chargingAndExchangeRecordDetail(orderNo);
    if (_result != null) {
      exchangeRecordDetail = RecordDetailModel.fromJson(_result);
    }
    update();
  }

  @override
  void onClose() {}
}
