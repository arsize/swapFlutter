import 'package:get/get.dart';
import 'package:swapapp/app/modules/my/apis/getUserCenterData.dart';
import 'package:swapapp/app/store/store.dart';
import 'package:swapapp/global.dart';

class MyController extends GetxController {
  final StoreController store = Get.find();
  RxDouble walletMoney = 0.0.obs;
  RxInt currentMonthOrderCount = 0.obs;
  RxInt totalSurplusNum = 0.obs;

  @override
  void onInit() async {
    super.onInit();
    Global.ctl = this;
    print("------------------------");
    if (store.isLogin.value) {
      var user = await getUserCenterData();
      walletMoney.value = user["data"]["walletMoney"] ?? 0;
      currentMonthOrderCount.value =
          user["data"]["currentMonthOrderCount"] ?? 0;
      totalSurplusNum.value = user["data"]["totalSurplusNum"] ?? 0;
    }
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
