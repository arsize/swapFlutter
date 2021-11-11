import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class AdminScanController extends GetxController {
  QRViewController? qrController;
  Barcode? result;
  AudioCache player = AudioCache();
  @override
  void onInit() {
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
      }
    });
  }
}
