library shop_order_list_view;

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:raintree/app/colors/colors.dart';
import 'package:raintree/app/common/widgets/button.dart';
import 'package:raintree/app/modules/shop_order_list/controllers/shop_order_list_controller.dart';
import 'package:raintree/app/utils/utils.dart';

part './widgets/all_order.dart';
part './widgets/pending_payment.dart';
part './widgets/dispatched.dart';
part './widgets/shipped.dart';
part './widgets/product_order_item.dart';

class ShopOrderListView extends StatefulWidget {
  const ShopOrderListView({Key? key}) : super(key: key);

  @override
  _ShopOrderListViewState createState() => _ShopOrderListViewState();
}

class _ShopOrderListViewState extends State<ShopOrderListView>
    with SingleTickerProviderStateMixin {
  final orderList = Get.find<ShopOrderListController>();
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(
      length: orderList.tabs.length,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "商城订单",
          style: TextStyle(
            fontSize: Adapt.font(36),
          ),
        ),
        backgroundColor: Colours.app_main,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        bottom: TabBar(
          labelStyle: TextStyle(
            fontSize: Adapt.font(32),
          ),
          controller: _controller,
          tabs: orderList.tabs
              .map((e) => Tab(
                    text: e,
                  ))
              .toList(),
        ),
      ),
      body: Container(
        color: Colours.app_light_grey,
        child: TabBarView(
          children: [
            AllOrder(),
            PendingPayment(),
            Dispatched(),
            Shipped(),
          ],
          controller: _controller,
        ),
      ),
    );
  }
}

// 消费
class Consume extends StatefulWidget {
  const Consume({Key? key}) : super(key: key);

  @override
  _ConsumeState createState() => _ConsumeState();
}

class _ConsumeState extends State<Consume> {
  List<int> list = [];
  late ScrollController _controller;
  bool show = false;
  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
    _controller.addListener(() {
      if (_controller.offset >= 100 && show == false) {
        setState(() {
          show = true;
        });
      } else {
        setState(() {
          show = false;
        });
      }
    });
    for (var i = 0; i < 10; i++) {
      list.add(i);
    }
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: ArUtil.border(12),
              color: Colors.white,
            ),
            padding: EdgeInsets.all(Adapt.width(32)),
            margin: EdgeInsets.only(bottom: Adapt.width(32)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "换电扣费",
                      style: TextStyle(
                        fontSize: Adapt.font(28),
                        color: Colours.app_main,
                      ),
                    ),
                    SizedBox(
                      height: Adapt.height(8),
                    ),
                    Text(
                      "2019年6月18日 12:00:00",
                      style: TextStyle(
                        fontSize: Adapt.font(24),
                        color: Colours.app_normal_grey,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "-5.00元",
                      style: TextStyle(
                        fontSize: Adapt.font(28),
                        color: Colours.app_orange_red,
                      ),
                    ),
                    SizedBox(
                      height: Adapt.height(8),
                    ),
                    Text(
                      "Apple Pay",
                      style: TextStyle(
                        fontSize: Adapt.font(24),
                        color: Colours.app_normal_grey,
                      ),
                    )
                  ],
                )
              ],
            ),
          );
        },
        itemCount: list.length,
        controller: _controller,
      ),
    );
  }
}
