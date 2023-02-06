import '../controller/transfer_page_three_controller.dart';
import 'package:get/get.dart';

class TransferPageThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TransferPageThreeController());
  }
}
