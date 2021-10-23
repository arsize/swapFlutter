/*
 * @Author: Arsize 
 * @Date: 2021-10-23 18:04:24 
 * @Describe: 待收货
 */
part of shop_order_list_view;

class Shipped extends StatelessWidget {
  const Shipped({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ctrl = Get.find<ShopOrderListController>();
    return Scrollbar(
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return ProductOrderItem();
        },
        itemCount: ctrl.allOrderList.length,
        controller: ctrl.shippedController,
      ),
    );
  }
}
