import 'package:get/get.dart';

class PutMoneyController extends GetxController {
  String selectMoney = '100';
  bool hasRead = false;

  void selectMoneyFn(money) {
    selectMoney = money;
    update();
  }

  void changeHasRead() {
    hasRead = !hasRead;
    update();
  }

  @override
  void onClose() {}
}
