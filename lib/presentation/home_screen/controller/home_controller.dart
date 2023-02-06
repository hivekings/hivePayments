import 'package:hive_payments/core/app_export.dart';
import 'package:hive_payments/presentation/home_screen/models/home_model.dart';

class HomeController extends GetxController {
  Rx<HomeModel> homeModelObj = HomeModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.toNamed(AppRoutes.splashScreen);
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
