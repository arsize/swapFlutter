import 'package:get/get.dart';

import '../controllers/shop_product_detail_controller.dart';

class ShopProductDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ShopProductDetailController>(
      () => ShopProductDetailController(),
    );
  }
}
