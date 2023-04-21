import 'dart:convert';

import 'package:hive_payments/core/app_export.dart';
import 'package:hive_payments/presentation/qr_request_pague_three_screen/models/qr_request_pague_three_model.dart';

import '../models/listellipsethirtyeight_item_model.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class QrRequestPagueThreeController extends GetxController {
  final storage = new FlutterSecureStorage();
  Rx<QrRequestPagueThreeModel> qrRequestPagueThreeModelObj =
      QrRequestPagueThreeModel().obs;

  dynamic quantity = Get.arguments["quantity"];
  dynamic memo = Get.arguments["memo"];
  dynamic currency = Get.arguments["currency"];

  Rx<String> qr = "".obs;

  @override
  Future<void> onReady() async {
    super.onReady();
    qrRequestPagueThreeModelObj.value.listellipsethirtyeightItemList = [
      ListellipsethirtyeightItemModel(memo, "memo"),
      ListellipsethirtyeightItemModel(quantity, "quantity"),
    ];

    String? username = await storage.read(key: "username");

    qr.value = json.encode({
      "memo": memo,
      "quantity": quantity,
      "currency": currency,
      "username": username
    });
    qrRequestPagueThreeModelObj.refresh();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
