import '../controller/qr_request_pague_three_controller.dart';
import 'package:get/get.dart';

class QrRequestPagueThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QrRequestPagueThreeController());
  }
}
