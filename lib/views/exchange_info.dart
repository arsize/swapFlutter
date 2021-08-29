/*
 * @Author: Arsize 
 * @Date: 2021-08-25 16:58:47 
 * @Describe: 换电页面
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:swapapp/themes/colors.dart';
import 'package:swapapp/utils/adapt.dart';
import 'package:swapapp/utils/arutil.dart';
import 'package:swapapp/widgets/common/app_bar.dart';
import 'package:swapapp/widgets/common/button.dart';

class ExchangeInfo extends StatefulWidget {
  const ExchangeInfo({Key? key}) : super(key: key);

  @override
  _ExchangeInfoState createState() => _ExchangeInfoState();
}

class _ExchangeInfoState extends State<ExchangeInfo> {
  bool _switchValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(context, title: "换电"),
      body: Container(
        height: double.infinity,
        color: Colours.app_F5_grey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                _mode1(),
                SizedBox(
                  height: Adapt.height(24),
                ),
                _mode2(),
                SizedBox(
                  height: Adapt.height(24),
                ),
                _mode3(),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0.0, 0.2),
                    blurRadius: 10,
                    spreadRadius: 1,
                  )
                ],
              ),
              padding: EdgeInsets.only(
                top: Adapt.height(12),
                bottom: Adapt.height(12),
                left: Adapt.width(32),
                right: Adapt.width(32),
              ),
              height: Adapt.height(112),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Text(
                          "0.00元",
                          style: TextStyle(
                            color: Colours.app_orange_red,
                            fontSize: Adapt.font(32),
                          ),
                        ),
                        SizedBox(
                          width: Adapt.width(21),
                        ),
                        InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              builder: (BuildContext context) {
                                return _exchangeRules();
                              },
                            );
                          },
                          child: Icon(
                            Icons.help,
                            color: Colours.app_normal_grey,
                            size: Adapt.font(35),
                          ),
                        )
                      ],
                    ),
                  ),
                  arBtn(
                    fn: () {},
                    width: 280,
                    height: 88,
                    text: "开始换电",
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  // 模块1
  Widget _mode1() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(Adapt.width(32)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "华丰国际02柜",
            style: TextStyle(
              fontSize: Adapt.font(32),
              fontWeight: FontWeight.w600,
              color: Colours.app_main,
            ),
          ),
          SizedBox(
            height: Adapt.height(6),
          ),
          Row(
            children: [
              Text(
                "ID",
                style: TextStyle(
                  color: Colours.app_normal_grey,
                  fontWeight: FontWeight.w600,
                  fontSize: Adapt.font(24),
                ),
              ),
              SizedBox(
                width: Adapt.width(11),
              ),
              Text(
                "000001",
                style: TextStyle(
                  color: Colours.app_normal_grey,
                  fontSize: Adapt.font(24),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  // 模块2
  Widget _mode2() {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: Adapt.height(500),
      padding: EdgeInsets.all(Adapt.width(32)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "提示：开始换电后，将会打开空仓，请保持安全距离",
            style: TextStyle(
              fontSize: Adapt.font(28),
              color: Colours.app_normal_grey,
            ),
          ),
          SizedBox(
            height: Adapt.height(56),
          ),
          _mode2Round(),
        ],
      ),
    );
  }

  // 模块2 圆球
  Widget _mode2Round() {
    return Container(
      width: Adapt.width(390),
      height: Adapt.width(390),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colours.app_green,
          width: Adapt.width(7),
        ),
        borderRadius: ArUtil.border(390),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "3",
              style: TextStyle(
                fontSize: Adapt.font(162),
                fontWeight: FontWeight.w700,
                color: Colours.app_green,
              ),
            ),
            SizedBox(
              height: Adapt.height(18),
            ),
            Text(
              "可换电（颗）",
              style: TextStyle(
                fontSize: Adapt.font(32),
                color: Colours.app_green,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // 模块3
  Widget _mode3() {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: Adapt.height(284),
      padding: EdgeInsets.all(Adapt.width(32)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "当前换电套餐",
            style: TextStyle(
              fontSize: Adapt.font(32),
              color: Colours.app_main,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: Adapt.height(16),
          ),
          Container(
            width: Adapt.width(686),
            height: Adapt.height(164),
            padding: EdgeInsets.all(Adapt.width(32)),
            decoration: BoxDecoration(
              color: Colours.app_exchange,
              borderRadius: ArUtil.border(
                Adapt.width(12),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "剩余4次",
                      style: TextStyle(
                        fontSize: Adapt.font(30),
                        color: Colours.app_over_yellow,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: Adapt.height(3),
                    ),
                    Text(
                      "有效期：2020.04.01",
                      style: TextStyle(
                        fontSize: Adapt.font(24),
                        color: Colours.app_normal_grey,
                      ),
                    ),
                  ],
                ),
                Image(
                  width: Adapt.width(100),
                  height: Adapt.height(100),
                  image: AssetImage("images/exchange_active.png"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  // 换电须知
  Widget _exchangeRules() {
    return Container(
      padding: EdgeInsets.only(
        top: Adapt.height(45),
        left: Adapt.width(32),
        right: Adapt.width(32),
      ),
      height: Adapt.height(328),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            Adapt.width(16),
          ),
          topRight: Radius.circular(
            Adapt.width(16),
          ),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "换电须知",
                style: TextStyle(
                  fontSize: Adapt.font(32),
                  color: Colours.app_main,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Row(
                children: [
                  Text(
                    "下次不再提醒",
                    style: TextStyle(
                      fontSize: Adapt.font(28),
                      color: Colours.app_main,
                    ),
                  ),
                  SizedBox(
                    width: Adapt.width(24),
                  ),
                  CupertinoSwitch(
                      value: _switchValue,
                      onChanged: (bool value) {
                        print(value);
                        _switchValue = value;
                        setState(() {});
                      })
                ],
              ),
            ],
          ),
          SizedBox(
            height: Adapt.height(35),
          ),
          Row(
            children: [
              Text(
                "1.单次换电",
                style: TextStyle(
                  fontSize: Adapt.font(28),
                ),
              ),
              Text(
                "5元/次",
                style: TextStyle(
                  fontSize: Adapt.font(32),
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "，购买换电套餐更实惠；",
                style: TextStyle(
                  fontSize: Adapt.font(28),
                ),
              ),
            ],
          ),
          SizedBox(
            height: Adapt.height(10),
          ),
          Text(
            "2.若已购买套餐，系统将自动扣除有效套餐内的换电次数以抵扣换电费用。",
            style: TextStyle(
              fontSize: Adapt.font(28),
            ),
          )
        ],
      ),
    );
  }
}
