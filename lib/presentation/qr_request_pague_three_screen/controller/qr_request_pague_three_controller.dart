import 'dart:convert';

import 'package:hive_payments/core/app_export.dart';
import 'package:hive_payments/presentation/qr_request_pague_three_screen/models/qr_request_pague_three_model.dart';

import '../models/listellipsethirtyeight_item_model.dart';

class QrRequestPagueThreeController extends GetxController {
  Rx<QrRequestPagueThreeModel> qrRequestPagueThreeModelObj =
      QrRequestPagueThreeModel().obs;

  dynamic quantity = Get.arguments["quantity"];
  dynamic memo = Get.arguments["memo"];

  Rx<String> qr = "".obs;

  @override
  void onReady() {
    super.onReady();
    qrRequestPagueThreeModelObj.value.listellipsethirtyeightItemList = [
      ListellipsethirtyeightItemModel(memo, "memo"),
      ListellipsethirtyeightItemModel(quantity, "quantity"),
    ];

    qr.value = json.encode({"memo": memo, "quantity": quantity});
    qrRequestPagueThreeModelObj.refresh();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
