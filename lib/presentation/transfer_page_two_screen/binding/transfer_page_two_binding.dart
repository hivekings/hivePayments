import '../controller/transfer_page_two_controller.dart';
import 'package:get/get.dart';

class TransferPageTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TransferPageTwoController());
  }
}
