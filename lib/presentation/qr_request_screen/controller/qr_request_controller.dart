import 'package:hive_payments/core/app_export.dart';
import 'package:hive_payments/presentation/qr_request_screen/models/qr_request_model.dart';

class QrRequestController extends GetxController {
  Rx<QrRequestModel> qrRequestModelObj = QrRequestModel().obs;

  List<String> listaCurrency = <String>['HIVE', 'HBD', 'SWAP.HIVE'];

  Rx<String> quantity = "0".obs;
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  setSelection(String? set) {
    qrRequestModelObj.value.currency = set;
    qrRequestModelObj.refresh();
  }

  keyboardAction(String labelOne) {
    if (labelOne == "-") {
      deleteAction();
      return;
    }
    if (quantity.value == "0") {
      if (labelOne != ".") {
        deleteAction();
      }
    }

    if (labelOne == ".") {
      if (!quantity.value.contains(".")) {
        quantity.value = quantity.value + labelOne;
      } else {
        checkPointExist();
      }
    } else {
      quantity.value = quantity.value + labelOne;
    }
  }

  deleteAction() {
    if (quantity.value.length > 0) {
      quantity.value = quantity.value.substring(0, quantity.value.length - 1);
    }
  }

  checkPointExist() {
    quantity.value = quantity.value + ".";
    if (quantity.value.contains(".")) {
      deleteAction();
    }
  }
}
