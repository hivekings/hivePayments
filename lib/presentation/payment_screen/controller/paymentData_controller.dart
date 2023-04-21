import 'package:flutter/material.dart';
import 'package:hive_payments/core/app_export.dart';
import 'package:hive_payments/presentation/payment_screen/models/payment_model.dart';

import '../../../data/apiClient/lib.dart';

class PaymentDataController extends GetxController {
  Rx<PaymentModel> paymentModelObj = PaymentModel().obs;

  dynamic data = Get.arguments;
  late HasClient r;
  @override
  void onReady() {
    super.onReady();
    paymentModelObj.value.result = {
      "memo": data["memo"],
      "quantity": data["quantity"],
      "currency": data["currency"],
      "image": data["image"],
      "username": data["username"]
    };
    paymentModelObj.refresh();
    r = new HasClient(retunedInfo);
    r.setReconnect = true;
    r.connect();
  }

  @override
  void onClose() {
    super.onClose();
    r.disconnect();
  }

  void payNow() {
    String u = paymentModelObj.value.result!["username"];
    String quantity = paymentModelObj.value.result!["quantity"];
    String tokenSend = paymentModelObj.value.result!["currency"];
    String memo = paymentModelObj.value.result!["memo"];
    r.makeTransfer(u, quantity, tokenSend, memo);
  }

  void retunedInfo(info) {
    if (info == "reconnect") {
      r.connect();
    }
    debugPrint(info);
  }

  void setContext(BuildContext context) {
    r.setContext = context;
  }
}
