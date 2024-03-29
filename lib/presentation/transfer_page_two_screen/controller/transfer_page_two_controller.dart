import 'package:hive_payments/core/app_export.dart';
import 'package:hive_payments/presentation/transfer_page_two_screen/models/transfer_page_two_model.dart';
import 'package:flutter/material.dart';

class TransferPageTwoController extends GetxController {
  TextEditingController tEXTFIELDController = TextEditingController();

  Rx<TransferPageTwoModel> transferPageTwoModelObj = TransferPageTwoModel().obs;

  dynamic username = Get.arguments["username"];

  @override
  void onReady() {
    super.onReady();

    debugPrint("$username");
  }

  @override
  void onClose() {
    super.onClose();
    tEXTFIELDController.dispose();
  }
}
