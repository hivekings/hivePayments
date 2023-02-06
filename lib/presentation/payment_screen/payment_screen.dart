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
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle94,
                      height: getVerticalSize(470.00),
                      width: getHorizontalSize(360.00),
                      alignment: Alignment.topCenter,
                      margin: getMargin(top: 26)),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          width: size.width,
                          padding: getPadding(
                              left: 24, top: 8, right: 24, bottom: 8),
                          decoration: AppDecoration.fillGray90003.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL12),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgArrowdownWhiteA700,
                                    height: getSize(24.00),
                                    width: getSize(24.00),
                                    alignment: Alignment.center),
                                Padding(
                                    padding: getPadding(top: 15),
                                    child: Text("msg_wilde_sunglasses2".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtRobotoRomanMedium16)),
                                Padding(
                                    padding: getPadding(top: 6),
                                    child: Text("msg_wilde_sunglasses".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtRobotoRomanMedium12)),
                                Padding(
                                    padding: getPadding(top: 9),
                                    child: Row(children: [
                                      Padding(
                                          padding: getPadding(top: 4),
                                          child: Text("lbl_currency".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRobotoRomanMedium12)),
                                      Padding(
                                          padding: getPadding(left: 12),
                                          child: Text("lbl_hive2".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRobotoRomanMedium16RedA400)),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgArrowdown,
                                          height: getSize(16.00),
                                          width: getSize(16.00),
                                          margin: getMargin(
                                              left: 7, top: 2, bottom: 1))
                                    ])),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: getPadding(top: 24),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      top: 6, bottom: 12),
                                                  child: Text("lbl2".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanMedium32)),
                                              Padding(
                                                  padding: getPadding(left: 5),
                                                  child: Text("lbl_50_00".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanMedium48))
                                            ]))),
                                CustomButton(
                                    height: 40,
                                    width: 312,
                                    text: "lbl_pay_now".tr,
                                    margin: getMargin(top: 33, bottom: 40),
                                    onTap: onTapPaynow)
                              ])))
                ]))));
  }

  onTapPaynow() {
    Get.toNamed(AppRoutes.receiptScreen);
  }

  onTapArrowleft3() {
    Get.back();
  }
}
