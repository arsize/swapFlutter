library records_view;

import 'package:flutter/material.dart';

import 'package:raintree/app/colors/colors.dart';
import 'package:raintree/app/utils/utils.dart';

class RecordsView extends StatefulWidget {
  const RecordsView({Key? key}) : super(key: key);

  @override
  _RecordsViewState createState() => _RecordsViewState();
}

class _RecordsViewState extends State<RecordsView>
    with SingleTickerProviderStateMixin {
  List tabs = ["充值", "消费"];
  late TabController _controller;
  List<Widget> widgets = [Invest(), Consume()];
  @override
  void initState() {
    super.initState();
    _controller = TabController(
      length: tabs.length,
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
          "消费明细",
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
          tabs: tabs
              .map((e) => Tab(
                    text: e,
                  ))
              .toList(),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(Adapt.width(32)),
        color: Colours.app_light_grey,
        child: TabBarView(
          children: widgets,
          controller: _controller,
        ),
      ),
    );
  }
}

// 充值
class Invest extends StatefulWidget {
  const Invest({Key? key}) : super(key: key);

  @override
  _InvestState createState() => _InvestState();
}

class _InvestState extends State<Invest> {
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
                      "余额充值",
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
                      "+10.00元",
                      style: TextStyle(
                        fontSize: Adapt.font(28),
                        color: Colours.app_yellow,
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
