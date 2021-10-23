import 'package:get/get.dart';

import '../controllers/shop_order_list_controller.dart';

class ShopOrderListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ShopOrderListController>(
      () => ShopOrderListController(),
    );
  }
}
