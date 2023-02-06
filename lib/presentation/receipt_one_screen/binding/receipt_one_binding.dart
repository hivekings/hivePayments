import '../controller/receipt_one_controller.dart';
import 'package:get/get.dart';

class ReceiptOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReceiptOneController());
  }
}
