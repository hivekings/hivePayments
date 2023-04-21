import 'package:flutter/material.dart';
import 'package:hive_payments/core/app_export.dart';
import 'package:hive_payments/widgets/app_bar/appbar_image.dart';
import 'package:hive_payments/widgets/app_bar/appbar_title.dart';
import 'package:hive_payments/widgets/app_bar/custom_app_bar.dart';
import 'package:hive_payments/widgets/custom_button.dart';

import '../controller/paymentData_controller.dart';

class PaymentScreenData extends GetWidget<PaymentDataController> {
  @override
  Widget build(BuildContext context) {
    final paymentDataController = Get.find<PaymentDataController>();

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
                title: AppbarTitle(text: "Trx".tr, margin: getMargin(left: 8))),
            body: Container(
                height: getVerticalSize(704.00),
                width: size.width,
                child: Obx(() =>
                    Stack(alignment: Alignment.bottomCenter, children: [
                      // aqui va la imagen que sale alla

                      paymentDataController
                                  .paymentModelObj.value.result?["image"] !=
                              null
                          ? Image(
                              image: MemoryImage(paymentDataController
                                  .paymentModelObj.value.result?["image"]))
                          : Text("Dont image display"),

                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                              width: size.width,
                              padding: getPadding(
                                  left: 24, top: 8, right: 24, bottom: 8),
                              decoration: AppDecoration.fillGray90003.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL12),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 15),
                                        child: Text(
                                            "${paymentDataController.paymentModelObj.value.result?["username"]}",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoRomanMedium16)),
                                    Padding(
                                        padding: getPadding(top: 6),
                                        child: Text(
                                            "${paymentDataController.paymentModelObj.value.result?["memo"]}",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoRomanMedium12)),
                                    Padding(
                                        padding: getPadding(top: 9),
                                        child: Row(children: [
                                          Padding(
                                              padding: getPadding(top: 4),
                                              child: Text("lbl_currency".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRomanMedium12)),
                                          Padding(
                                              padding: getPadding(left: 12),
                                              child: Text(
                                                  "${paymentDataController.paymentModelObj.value.result?["currency"]}",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRomanMedium16RedA400)),
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
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRomanMedium32)),
                                                  Padding(
                                                      padding:
                                                          getPadding(left: 5),
                                                      child: Text(
                                                          "${paymentDataController.paymentModelObj.value.result?["quantity"]}",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRomanMedium48))
                                                ]))),
                                    CustomButton(
                                        height: 40,
                                        width: 312,
                                        text: "lbl_pay_now".tr,
                                        margin: getMargin(top: 33, bottom: 40),
                                        onTap: () => {onTapPaynow(context)})
                                  ])))
                    ])))));
  }

  onTapPaynow(context) {
    //Get.toNamed(AppRoutes.receiptScreen);
    controller.setContext(context);
    controller.payNow();
  }

  onTapArrowleft3() {
    Get.offNamed(AppRoutes.homeScreen);
  }
}
