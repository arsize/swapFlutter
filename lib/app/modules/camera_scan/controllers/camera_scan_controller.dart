import 'package:get/get.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class CameraScanController extends GetxController {
  // 列表滚动
  late final QRViewController qrController;

  @override
  void onClose() {}

  @override
  void dispose() {
    qrController.dispose();
    super.dispose();
  }

  void onQRViewCreated(QRViewController controller) {
    qrController = controller;
    qrController.scannedDataStream.listen((scanData) {});
  }

  /// 打开/关闭闪光灯
  void toggleFlash() {
    qrController.toggleFlash();
  }
}
