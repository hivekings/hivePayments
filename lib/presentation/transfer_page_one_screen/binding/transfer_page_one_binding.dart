import '../controller/transfer_page_one_controller.dart';
import 'package:get/get.dart';

class TransferPageOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TransferPageOneController());
  }
}
