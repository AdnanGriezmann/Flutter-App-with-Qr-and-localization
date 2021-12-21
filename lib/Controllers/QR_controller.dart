import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:get/get.dart';
import 'package:live_ui_getx/Utils/Colors.dart';

class QRController extends GetxController {
  String ScannedQrcode = '';

  Future<void> scanQR() async {
    update();

    try {
      ScannedQrcode = await FlutterBarcodeScanner.scanBarcode(
        '#ff6666',
        'Cancel',
        true,
        ScanMode.QR,
      );

      Get.snackbar('result', 'QR Code' + ScannedQrcode,
          backgroundColor: AppColors.Bgblue);
    } on PlatformException {}
  }
}
