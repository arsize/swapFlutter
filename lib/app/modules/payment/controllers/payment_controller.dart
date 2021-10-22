import 'package:get/get.dart';
import 'package:pay/pay.dart';
import 'package:raintree/app/common/apis/pay.dart';

class PaymentController extends GetxController {
  String selectPay = "enets";
  List<PaymentItem>? paymentItems;
  String money = "0";

  @override
  void onInit() {
    super.onInit();
    money = Get.parameters["money"] ?? '0';
    paymentItems = [
      PaymentItem(
        label: 'Total',
        amount: '1',
        status: PaymentItemStatus.final_price,
      )
    ];
  }

  void selectPayment(e) {
    selectPay = e;
    update();
  }

  /// 去支付
  void submitTo() async {
    int _payType = 0;
    if (selectPay == "enets") {
      _payType = 1;
    } else if (selectPay == "apple") {
      _payType = 3;
    }

    var _result = await payWalletBalanceRecharge(
      payType: _payType,
      payMoney: 0.1,
    );
    print('发起支付');
    print(_result);
  }

  /// apple pay
  applePay() {}

  onApplePayResult(paymentResult) {
    print("苹果支付回调");
    print(paymentResult);
  }

  @override
  void onClose() {}
}
