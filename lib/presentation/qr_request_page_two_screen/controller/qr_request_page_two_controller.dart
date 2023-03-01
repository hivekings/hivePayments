import 'package:hive_payments/core/app_export.dart';
import 'package:hive_payments/presentation/qr_request_page_two_screen/models/qr_request_page_two_model.dart';
import 'package:flutter/material.dart';

class QrRequestPageTwoController extends GetxController {
  TextEditingController tEXTFIELDController = TextEditingController();

  Rx<QrRequestPageTwoModel> qrRequestPageTwoModelObj =
      QrRequestPageTwoModel().obs;

  dynamic quantitydata = Get.arguments["quantity"];

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    tEXTFIELDController.dispose();
  }
}
