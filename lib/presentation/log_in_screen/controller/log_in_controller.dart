import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_payments/core/app_export.dart';
import 'package:hive_payments/presentation/log_in_screen/models/log_in_model.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../data/apiClient/lib.dart';

class LogInController extends GetxController {
  Rx<LogInModel> logInModelObj = LogInModel().obs;
  TextEditingController usernameTexfield = TextEditingController();
  TextEditingController activeTexfield = TextEditingController();
  final storage = new FlutterSecureStorage();
  late HasClient r;
  @override
  Future<void> onReady() async {
    // await storage.write(key: "username", value: "chocolatoso");
    super.onReady();
    String? value = await storage.read(key: "username");

    if (value != null) {
      Get.offNamed(AppRoutes.homeScreen);
    } else {
      //Get.toNamed(AppRoutes.logInScreen);
    }

    r = new HasClient(mensaje);
    r.connect();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> mensaje(dynamic message) async {
    debugPrint(message);
    if (message != "logged in") {
      await launchUrl(Uri.parse(message));
    } else {
      Get.offNamed(AppRoutes.homeScreen);
    }
  }
}
