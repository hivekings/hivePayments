import '../controller/paymentData_controller.dart';
import 'package:get/get.dart';

class PaymentDataBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentDataController());
  }
}
