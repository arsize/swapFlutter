part of shop_order_list_view;

class AllOrder extends StatelessWidget {
  const AllOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ctrl = Get.find<ShopOrderListController>();
    return Scrollbar(
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return ProductOrderItem();
        },
        itemCount: ctrl.allOrderList.length,
        controller: ctrl.allController,
      ),
    );
  }
}
