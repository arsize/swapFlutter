/*
 * @Author: Arsize 
 * @Date: 2021-08-24 18:32:08 
 * @Describe: 扫码页
 */
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:swapapp/themes/colors.dart';
import 'package:swapapp/utils/adapt.dart';
import 'package:swapapp/utils/arutil.dart';

class ScanQr extends StatefulWidget {
  const ScanQr({Key? key}) : super(key: key);

  @override
  _ScanQrState createState() => _ScanQrState();
}

class _ScanQrState extends State<ScanQr> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  late Barcode result;
  late QRViewController controller;
  @override
  void reassemble() {
    super.reassemble();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              bottom: 0,
              left: 0,
              right: 0,
              child: QRView(
                key: qrKey,
                onQRViewCreated: _onQRViewCreated,
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Opacity(
                opacity: 0.8,
                child: Container(
                  height: Adapt.height(232),
                  color: Colors.black,
                ),
              ),
            ),
            Positioned(
              top: Adapt.height(231.5),
              left: 0,
              child: Opacity(
                opacity: 0.8,
                child: Container(
                  width: Adapt.width(85),
                  height: Adapt.height(500),
                  color: Colors.black,
                ),
              ),
            ),
            Positioned(
              top: Adapt.height(231.5),
              right: 0,
              child: Opacity(
                opacity: 0.8,
                child: Container(
                  width: Adapt.width(85),
                  height: Adapt.height(500),
                  color: Colors.black,
                ),
              ),
            ),
            Positioned(
              top: Adapt.height(731),
              left: 0,
              right: 0,
              child: Opacity(
                opacity: 0.8,
                child: Container(
                  height: Adapt.height(312),
                  color: Colors.black,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Opacity(
                opacity: 1,
                child: Container(
                  height: Adapt.height(210),
                  color: Colors.black,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: Adapt.width(146),
                      right: Adapt.width(146),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .pushReplacementNamed("transitInput");
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                width: Adapt.width(88),
                                height: Adapt.width(88),
                                image: AssetImage("images/scan_hand.png"),
                              ),
                              SizedBox(
                                height: Adapt.height(16),
                              ),
                              Text(
                                "输入电柜ID",
                                style: TextStyle(
                                  fontSize: Adapt.font(24),
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              width: Adapt.width(88),
                              height: Adapt.width(88),
                              image: AssetImage("images/scan_light.png"),
                            ),
                            SizedBox(
                              height: Adapt.height(16),
                            ),
                            Text(
                              "打开手电筒",
                              style: TextStyle(
                                fontSize: Adapt.font(24),
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: Adapt.height(117),
              left: Adapt.width(215),
              child: Opacity(
                opacity: 0.8,
                child: Container(
                  width: Adapt.width(320),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: ArUtil.border(30),
                    color: Colours.app_main,
                  ),
                  padding: EdgeInsets.only(
                    top: Adapt.width(10),
                    bottom: Adapt.width(10),
                  ),
                  child: Text(
                    "对准电柜屏幕二维码",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: Adapt.font(26),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: Adapt.width(44),
              top: Adapt.width(70),
              child: InkWell(
                child: Padding(
                  padding: EdgeInsets.only(
                    right: Adapt.width(50),
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
          ],
        ),
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
        print(result.code);
        print(result.format);
      });
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
