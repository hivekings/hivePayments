import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hive_payments/core/app_export.dart';
import 'package:hive_payments/presentation/transfer_screen/models/transfer_model.dart';

import '../../../data/apiClient/lib.dart';

class TransferController extends GetxController {
  Rx<TransferModel> listUsers = TransferModel().obs;
  TextEditingController tEXTFIELDController = TextEditingController();

  @override
  Future<void> onReady() async {
    super.onReady();
    String? str = await storage.read(key: "transferadd");
    if (str != null) {
      List<dynamic> listusers = json.decode(str);
      listUsers.value.listhiveItemList = listusers;
      listUsers.refresh();
      debugPrint("$str");
    }
  }

  @override
  void onClose() {
    super.onClose();
  }

  addUsername(context) async {
    String? str = await storage.read(key: "transferadd");
    debugPrint("$str");
    if (str != null) {
      List<dynamic> lu = json.decode(str);
      String u = tEXTFIELDController.text;
      if (alreadyAdded(u, lu)) {
      } else {
        lu.add({"username": u});
        listUsers.value.listhiveItemList = lu;
        await storage.write(key: "transferadd", value: json.encode(lu));
        listUsers.refresh();
      }
    } else {
      String u = tEXTFIELDController.text;

      List<dynamic> listhiveItemList = [
        {"username": u}
      ];

      await storage.write(
          key: "transferadd", value: json.encode(listhiveItemList));
      listUsers.value.listhiveItemList = listhiveItemList;
      listUsers.refresh();
    }
    Navigator.pop(context);
  }

  bool alreadyAdded(String username, List<dynamic> list) {
    for (var item in list) {
      if (item["username"] == username) {
        return true;
      }
    }
    return false;
  }
}
