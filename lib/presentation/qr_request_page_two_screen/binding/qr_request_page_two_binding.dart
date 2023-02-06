import '../controller/qr_request_page_two_controller.dart';
import 'package:get/get.dart';

class QrRequestPageTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QrRequestPageTwoController());
  }
}
