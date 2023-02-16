import 'package:hive_payments/core/app_export.dart';
import 'package:hive_payments/presentation/splash_screen/models/splash_model.dart';

class SplashController extends GetxController {
  Rx<SplashModel> splashModelObj = SplashModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.toNamed(AppRoutes.logInScreen);
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
