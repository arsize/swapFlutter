import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:raintree/app/modules/transit_input/api/get_cabinet_info.dart';
import 'package:raintree/app/store/store.dart';

class CameraScanController extends GetxController {
  final store = Get.find<StoreController>();
  // 列表滚动
  QRViewController? qrController;
  Barcode? result;
  AudioCache player = AudioCache();

  @override
  void onClose() {}

  @override
  void onInit() {
    if (Platform.isAndroid) {
      qrController?.pauseCamera();
    } else if (Platform.isIOS) {
      qrController?.resumeCamera();
    }
    super.onInit();
  }

  @override
  void dispose() {
    qrController?.dispose();
    super.dispose();
  }

  void onQRViewCreated(QRViewController controller) {
    qrController = controller;
    qrController?.scannedDataStream.listen((scanData) async {
      print("扫码");
      result = scanData;
      String _tempCode = result!.code;
      print(_tempCode);
      if (result != null) {
        qrController?.pauseCamera();
        player.play("sounds/scan.mp3");

        if (_tempCode.contains("deviceUid")) {
          _tempCode = _tempCode.split("deviceUid=")[1];
        } else {
          _tempCode = _tempCode;
        }
        String? _cabinet =
            await getCabinetInfoByScan(cabinetId: _tempCode, from: "camera");
        if (_cabinet != null) {
          store.updateCabinetDetail(_cabinet);
          Get.offNamed("/exchange-info");
        }
      }
    });
  }

  /// 打开/关闭闪光灯
  void toggleFlash() {
    qrController?.toggleFlash();
  }
}
