import 'package:get/get.dart';

import '../controllers/product_address_controller.dart';

class ProductAddressBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductAddressController>(
      () => ProductAddressController(),
    );
  }
}
