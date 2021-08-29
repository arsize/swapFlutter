import 'package:flutter/material.dart';
import 'package:swapapp/themes/colors.dart';
import 'package:swapapp/utils/adapt.dart';
import 'package:swapapp/utils/arutil.dart';
import 'package:swapapp/widgets/common/common_wigets.dart';

class MyQrCode extends StatefulWidget {
  const MyQrCode({Key? key}) : super(key: key);

  @override
  _MyQrCodeState createState() => _MyQrCodeState();
}

class _MyQrCodeState extends State<MyQrCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(
        context,
        title: "我的二维码",
        elevation: 0,
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colours.app_main,
            ),
          ),
          Positioned(
            top: 20,
            left: Adapt.width(32),
            right: Adapt.width(32),
            child: Container(
              alignment: Alignment.center,
              height: Adapt.width(800),
              padding: EdgeInsets.all(Adapt.width(32)),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: ArUtil.border(
                  Adapt.width(12),
                ),
              ),
              child: Text("x"),
            ),
          )
        ],
      ),
    );
  }
}
