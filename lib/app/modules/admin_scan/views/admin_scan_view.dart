import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';

import 'package:get/get.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:raintree/app/utils/utils.dart';
import '../controllers/admin_scan_controller.dart';

class AdminScanView extends GetView<AdminScanController> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        fit: StackFit.expand,
        children: [
          QRView(
            key: qrKey,
            onQRViewCreated: controller.onQRViewCreated,
          ),
          Positioned(
            bottom: 100.h,
            child: Container(
              width: 450.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Bounce(
                    duration: Duration(milliseconds: 110),
                    onPressed: () {
                      Get.offNamed("/transit-input");
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          width: 88.w,
                          height: 88.w,
                          image: AssetImage("images/scan_hand.png"),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        Text(
                          "输入电柜ID",
                          style: TextStyle(
                            fontSize: 24.f,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Bounce(
                    duration: Duration(milliseconds: 110),
                    onPressed: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          width: 88.w,
                          height: 88.w,
                          image: AssetImage("images/scan_light.png"),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        Text(
                          "打开手电筒",
                          style: TextStyle(
                            fontSize: 24.f,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 300.h,
            child: Container(
              width: 500.w,
              height: 500.w,
              child: Image(
                fit: BoxFit.fill,
                image: AssetImage("images/scan_view.png"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
