/*
 * @Author: Arsize 
 * @Date: 2021-10-23 18:02:36 
 * @Describe: 待发货
 */
part of shop_order_list_view;

class Dispatched extends StatelessWidget {
  const Dispatched({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ctrl = Get.find<ShopOrderListController>();
    return Scrollbar(
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return ProductOrderItem();
        },
        itemCount: ctrl.allOrderList.length,
        controller: ctrl.dispatchedController,
      ),
    );
  }
}
