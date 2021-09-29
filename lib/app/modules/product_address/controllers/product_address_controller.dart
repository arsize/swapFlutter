import 'package:get/get.dart';

class ProductAddressController extends GetxController {
  final List addressList = [];

  @override
  void onInit() {
    super.onInit();
    for (var i = 0; i < 4; i++) {
      addressList.add(i);
    }
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
