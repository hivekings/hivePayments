import 'package:hive_payments/core/app_export.dart';
import 'package:hive_payments/presentation/receipt_screen/models/receipt_model.dart';

class ReceiptController extends GetxController {
  dynamic tx = Get.arguments["transaction"];
  String? activeUsername = Get.parameters["activeUsername"];
  Rx<ReceiptModel> receiptModelObj = ReceiptModel().obs;

  @override
  void onReady() {
    super.onReady();

    receiptModelObj.value.amount = tx.amount;
    receiptModelObj.value.block = tx.block;
    receiptModelObj.value.from = tx.from;
    receiptModelObj.value.memo = tx.memo;
    receiptModelObj.value.timestamp = tx.timestamp;
    receiptModelObj.value.tipoOp = tx.tipoOp;
    receiptModelObj.value.to = tx.to;
    receiptModelObj.value.trxId = tx.trxId;
    receiptModelObj.value.activeUsername = activeUsername;

    receiptModelObj.refresh();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
