library camera_scan_view;

import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';

import 'package:get/get.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:raintree/app/colors/colors.dart';
import 'package:raintree/app/utils/utils.dart';

import '../controllers/camera_scan_controller.dart';

part './widgets/scan_ani.dart';

class CameraScanView extends GetView<CameraScanController> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
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
                    onPressed: () {
                      controller.toggleFlash();
                    },
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
            top: 160.h,
            left: 215.w,
            child: Opacity(
              opacity: 0.8,
              child: Container(
                width: 320.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: ArUtil.border(30),
                  color: Colours.app_main,
                ),
                padding: EdgeInsets.only(
                  top: 10.w,
                  bottom: 10.w,
                ),
                child: Text(
                  "对准电柜屏幕二维码",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26.f,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 44.w,
            top: 90.w,
            child: InkWell(
              child: Padding(
                padding: EdgeInsets.only(
                  right: 50.w,
                ),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
              ),
              onTap: () => {
                Navigator.of(context).pop(),
              },
            ),
          ),
          Positioned(
            top: 350.h,
            child: Container(
              width: 600.w,
              height: 600.w,
              child: Image(
                fit: BoxFit.fill,
                image: AssetImage("images/scan_view.png"),
              ),
            ),
          ),
          Positioned(
            top: 302.h,
            child: ScanAnimate(),
          ),
        ],
      ),
    );
  }
}
