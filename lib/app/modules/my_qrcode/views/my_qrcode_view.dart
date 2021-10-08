import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:raintree/app/colors/colors.dart';
import 'package:raintree/app/common/widgets/app_bar.dart';
import 'package:raintree/app/utils/utils.dart';

import '../controllers/my_qrcode_controller.dart';

class MyQrcodeView extends GetView<MyQrcodeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(title: "我的二维码", elevation: 0),
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
              child: QrImage(
                data: "1234567890",
                version: QrVersions.auto,
                size: 200.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
