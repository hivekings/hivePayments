import '../controller/qr_request_controller.dart';
import 'package:get/get.dart';

class QrRequestBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QrRequestController());
  }
}
