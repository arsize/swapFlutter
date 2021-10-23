/*
 * @Author: Arsize 
 * @Date: 2021-10-23 18:00:34 
 * @Describe: 待付款
 */
part of shop_order_list_view;

class PendingPayment extends StatelessWidget {
  const PendingPayment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ctrl = Get.find<ShopOrderListController>();
    return Scrollbar(
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return ProductOrderItem();
        },
        itemCount: ctrl.allOrderList.length,
        controller: ctrl.pendingController,
      ),
    );
  }
}
