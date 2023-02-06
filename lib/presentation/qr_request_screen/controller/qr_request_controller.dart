import 'package:hive_payments/core/app_export.dart';
import 'package:hive_payments/presentation/qr_request_screen/models/qr_request_model.dart';

class QrRequestController extends GetxController {
  Rx<QrRequestModel> qrRequestModelObj = QrRequestModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
