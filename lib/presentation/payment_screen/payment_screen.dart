import 'controller/payment_controller.dart';
import 'package:flutter/material.dart';
import 'package:hive_payments/core/app_export.dart';
import 'package:hive_payments/widgets/app_bar/appbar_image.dart';
import 'package:hive_payments/widgets/app_bar/appbar_title.dart';
import 'package:hive_payments/widgets/app_bar/custom_app_bar.dart';
import 'package:hive_payments/widgets/custom_button.dart';

class PaymentScreen extends GetWidget<PaymentController> {
  @override
  Widget build(BuildContext context) {
    final paymentController = Get.find<PaymentController>();
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.black900,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 48,
                leading: AppbarImage(
                    height: getSize(24.00),
                    width: getSize(24.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24, top: 16, bottom: 15),
                    onTap: onTapArrowleft3),
                title: AppbarTitle(
                    text: "lbl_scanner".tr, margin: getMargin(left: 8))),
            body: Container(
                height: getVerticalSize(704.00),
                width: size.width,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  // aqui va la imagen que sale alla
                  paymentController.buildQrScanner(context)
                ]))));
  }

  onTapPaynow() {
    //Get.toNamed(AppRoutes.receiptScreen);
  }

  onTapArrowleft3() {
    Get.back();
  }
}
