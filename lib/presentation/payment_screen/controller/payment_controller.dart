import 'dart:convert';
import 'dart:typed_data';

import 'package:hive_payments/core/app_export.dart';
import 'package:hive_payments/presentation/payment_screen/models/payment_model.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:flutter/material.dart';

import '../widgets/QRScannerOverlay.dart';

class PaymentController extends GetxController {
  Rx<PaymentModel> paymentModelObj = PaymentModel().obs;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  MobileScannerController qrViewController = MobileScannerController(
    facing: CameraFacing.back,
    torchEnabled: false,
    returnImage: true,
  );

  Rx<bool> displayEnable = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void dispose() {
    Get.delete<PaymentController>();
    super.dispose();
  }

  void handleQrResult(result, Uint8List? image) {
    Map<String, dynamic> jsonMap = json.decode(result);
    debugPrint(result);
    if (jsonMap['memo'] != null && jsonMap['quantity'] != null) {
      // El JSON es válido

      paymentModelObj.value = PaymentModel(result: jsonMap);
      displayEnable.value = true;
      paymentModelObj.refresh();
      displayEnable.refresh();
      debugPrint('json es valido ' + result);
      jsonMap["image"] = image;
      Get.offNamed(AppRoutes.paymentDataScreen, arguments: jsonMap);
    } else {
      // El JSON es inválido
      debugPrint('json es INvalido ' + result);
    }

    // Lógica adicional para manejar el resultado del escaneo
  }

  // Widget para mostrar el escáner QR
  Widget buildQrScanner(BuildContext context) {
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
            MediaQuery.of(context).size.height < 400)
        ? 150.0
        : 300.0;
    return Stack(children: [
      MobileScanner(
          key: qrKey,
          controller: qrViewController,
          onDetect: (capture) {
            final List<Barcode> barcodes = capture.barcodes;
            final Uint8List? image = capture.image;
            for (final barcode in barcodes) {
              if (image != null) {
                handleQrResult('${barcode.rawValue}', image);
              }
            }
          }),
      QRScannerOverlay(overlayColour: Colors.black.withOpacity(0.5))
    ]);
  }
}
