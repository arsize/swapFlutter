/*
 * @Author: Arsize 
 * @Date: 2021-08-25 11:21:40 
 * @Describe: 用户钱包
 */
import 'package:flutter/material.dart';
import 'package:swapapp/themes/colors.dart';
import 'package:swapapp/utils/adapt.dart';
import 'package:swapapp/utils/arutil.dart';

class MyWallet extends StatefulWidget {
  const MyWallet({Key? key}) : super(key: key);

  @override
  _MyWalletState createState() => _MyWalletState();
}

class _MyWalletState extends State<MyWallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "钱包",
          style: TextStyle(
            fontSize: Adapt.font(36),
          ),
        ),
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
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: Adapt.height(40),
          left: Adapt.width(32),
          right: Adapt.width(32),
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colours.app_text_light.withOpacity(0.3),
                borderRadius: ArUtil.border(Adapt.font(8)),
              ),
              width: double.infinity,
              height: Adapt.width(80),
              child: Padding(
                padding: EdgeInsets.only(
                  top: Adapt.width(19),
                  bottom: Adapt.width(19),
                  left: Adapt.width(20),
                  right: Adapt.width(20),
                ),
                child: Text(
                  "温馨提示：充值余额不可提现。",
                  style: TextStyle(
                    fontSize: Adapt.font(28),
                    color: Colours.app_font_grey6,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: Adapt.height(28),
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Image(
                  width: double.infinity,
                  height: Adapt.height(315),
                  image: AssetImage("images/wallet_bg.png"),
                ),
                Padding(
                  padding: EdgeInsets.all(Adapt.width(32)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "余额（元）",
                            style: TextStyle(
                              fontSize: Adapt.font(28),
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: Adapt.height(16),
                          ),
                          Text(
                            "199.00",
                            style: TextStyle(
                              fontSize: Adapt.font(56),
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed("putMoney");
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: Adapt.width(180),
                          height: Adapt.width(88),
                          decoration: BoxDecoration(
                            color: Colours.app_black,
                            borderRadius: ArUtil.border(
                              Adapt.width(75),
                            ),
                          ),
                          child: Text(
                            "去充值",
                            style: TextStyle(
                              fontSize: Adapt.font(32),
                              color: Colours.app_yellow,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: Adapt.height(59),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed("records");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Image(
                          width: Adapt.width(32),
                          height: Adapt.width(32),
                          image: AssetImage("images/wallet_menuicon.png"),
                        ),
                        SizedBox(
                          width: Adapt.width(16),
                        ),
                        Text(
                          "消费明细",
                          style: TextStyle(
                            fontSize: Adapt.font(30),
                            color: Colours.app_main,
                          ),
                        )
                      ],
                    ),
                  ),
                  Image(
                    width: Adapt.width(32),
                    height: Adapt.width(32),
                    image: AssetImage("images/line_rightrow.png"),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
