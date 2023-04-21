import 'package:flutter/material.dart';
import 'package:hive_payments/core/app_export.dart';
import 'package:hive_payments/data/apiClient/lib.dart';
import 'package:hive_payments/presentation/transfer_page_three_screen/models/transfer_page_three_model.dart';

class TransferPageThreeController extends GetxController {
  Rx<TransferPageThreeModel> transferPageThreeModelObj =
      TransferPageThreeModel().obs;
  TextEditingController tEXTFIELDController = TextEditingController();
  dynamic username = Get.arguments["username"];
  dynamic memo = Get.arguments["memo"];
  late HasClient client;

  @override
  void onReady() {
    super.onReady();
    client = new HasClient(onTapCancel);
    client.connect();
  }

  @override
  void onClose() {
    super.onClose();
  }

  onTapCancel() {
    Get.toNamed(AppRoutes.homeScreen);
  }
}
