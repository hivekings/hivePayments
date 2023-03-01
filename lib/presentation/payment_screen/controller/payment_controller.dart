import 'dart:typed_data';

import 'package:hive_payments/core/app_export.dart';
import 'package:hive_payments/presentation/payment_screen/models/payment_model.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:flutter/material.dart';

class PaymentController extends GetxController {
  Rx<PaymentModel> paymentModelObj = PaymentModel().obs;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  MobileScannerController qrViewController = MobileScannerController(
    facing: CameraFacing.back,
    torchEnabled: false,
  );

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    qrViewController.dispose();
  }

  void handleQrResult(result) {
    paymentModelObj.value = PaymentModel(result: result);
    // Lógica adicional para manejar el resultado del escaneo
  }

  // Widget para mostrar el escáner QR
  Widget buildQrScanner(BuildContext context) {
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
            MediaQuery.of(context).size.height < 400)
        ? 150.0
        : 300.0;
    return MobileScanner(
        key: qrKey,
        controller: qrViewController,
        onDetect: (capture) {
          final List<Barcode> barcodes = capture.barcodes;
          final Uint8List? image = capture.image;
          for (final barcode in barcodes) {
            debugPrint('Barcode found! ${barcode.rawValue}');
          }
        });
  }
}
