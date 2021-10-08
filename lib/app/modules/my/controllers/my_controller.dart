import 'package:get/get.dart';
import 'package:raintree/app/modules/my/apis/get_user_center.dart';
import 'package:raintree/app/store/store.dart';
import 'package:raintree/global.dart';

class MyController extends GetxController {
  final StoreController store = Get.find();
  RxDouble walletMoney = 0.0.obs;
  RxInt currentMonthOrderCount = 0.obs;
  RxInt totalSurplusNum = 0.obs;

  @override
  void onInit() async {
    super.onInit();
    Global.currentPage = this;
    if (store.isLogin.value) {
      var user = await getUserCenterData();
      walletMoney.value = user["data"]["walletMoney"] ?? 0;
      currentMonthOrderCount.value =
          user["data"]["currentMonthOrderCount"] ?? 0;
      totalSurplusNum.value = user["data"]["totalSurplusNum"] ?? 0;
    }
  }

  @override
  void onClose() {}
}
