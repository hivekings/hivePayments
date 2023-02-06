import 'package:hive_payments/core/app_export.dart';
import 'package:hive_payments/presentation/receipt_screen/models/receipt_model.dart';

class ReceiptController extends GetxController {
  Rx<ReceiptModel> receiptModelObj = ReceiptModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
