import 'package:hive_payments/core/app_export.dart';
import 'package:hive_payments/presentation/splash_screen/models/splash_model.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SplashController extends GetxController {
  Rx<SplashModel> splashModelObj = SplashModel().obs;
  final storage = new FlutterSecureStorage();

  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(milliseconds: 3000), () async {
      String? value = await storage.read(key: "username");

      if (value != null) {
        Get.offNamed(AppRoutes.homeScreen);
      } else {
        Get.offNamed(AppRoutes.logInScreen);
      }
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
