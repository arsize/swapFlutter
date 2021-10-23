import 'package:get/get.dart';
import 'package:raintree/app/modules/wallet/apis/get_user_wallet.dart';

class WalletController extends GetxController {
  RxDouble walletMoney = 0.0.obs;
  @override
  void onInit() {
    super.onInit();
    getWallet();
  }

  void getWallet() async {
    var _result = await getUserWalletInfo();
    if (_result["code"] == 200) {
      walletMoney.value = _result["data"]["money"];
    } else {}
  }

  @override
  void onClose() {}
}
