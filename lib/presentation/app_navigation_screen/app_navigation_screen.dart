import 'controller/app_navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:hive_payments/core/app_export.dart';

class AppNavigationScreen extends GetWidget<AppNavigationController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                  width: getHorizontalSize(375.00),
                  decoration: AppDecoration.fillWhiteA700,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: getPadding(
                                    left: 20, top: 10, right: 20, bottom: 10),
                                child: Text("lbl_app_navigation".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: AppStyle.txtRobotoRegular20))),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: getPadding(left: 20),
                                child: Text("msg_check_your_app_s".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: AppStyle.txtRobotoRegular16))),
                        Container(
                            height: getVerticalSize(1.00),
                            width: getHorizontalSize(375.00),
                            margin: getMargin(top: 5),
                            decoration:
                                BoxDecoration(color: ColorConstant.black900))
                      ])),
              Expanded(
                  child: SingleChildScrollView(
                      child: Container(
                          decoration: AppDecoration.fillWhiteA700,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      onTapHome();
                                    },
                                    child: Container(
                                        width: getHorizontalSize(375.00),
                                        decoration: AppDecoration.fillWhiteA700,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 10,
                                                          right: 20,
                                                          bottom: 10),
                                                      child: Text("lbl_home".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRegular20))),
                                              Container(
                                                  height: getVerticalSize(1.00),
                                                  width:
                                                      getHorizontalSize(375.00),
                                                  margin: getMargin(top: 5),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .bluegray400))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapLOGIN();
                                    },
                                    child: Container(
                                        width: getHorizontalSize(375.00),
                                        decoration: AppDecoration.fillWhiteA700,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 10,
                                                          right: 20,
                                                          bottom: 10),
                                                      child: Text(
                                                          "lbl_log_in".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRegular20))),
                                              Container(
                                                  height: getVerticalSize(1.00),
                                                  width:
                                                      getHorizontalSize(375.00),
                                                  margin: getMargin(top: 5),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .bluegray400))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapQRRequest();
                                    },
                                    child: Container(
                                        width: getHorizontalSize(375.00),
                                        decoration: AppDecoration.fillWhiteA700,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 10,
                                                          right: 20,
                                                          bottom: 10),
                                                      child: Text(
                                                          "lbl_qr_request".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRegular20))),
                                              Container(
                                                  height: getVerticalSize(1.00),
                                                  width:
                                                      getHorizontalSize(375.00),
                                                  margin: getMargin(top: 5),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .bluegray400))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapSPLASH();
                                    },
                                    child: Container(
                                        width: getHorizontalSize(375.00),
                                        decoration: AppDecoration.fillWhiteA700,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 10,
                                                          right: 20,
                                                          bottom: 10),
                                                      child: Text(
                                                          "lbl_splash".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRegular20))),
                                              Container(
                                                  height: getVerticalSize(1.00),
                                                  width:
                                                      getHorizontalSize(375.00),
                                                  margin: getMargin(top: 5),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .bluegray400))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapQRrequestpageTwo();
                                    },
                                    child: Container(
                                        width: getHorizontalSize(375.00),
                                        decoration: AppDecoration.fillWhiteA700,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 10,
                                                          right: 20,
                                                          bottom: 10),
                                                      child: Text(
                                                          "msg_qr_request_page"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRegular20))),
                                              Container(
                                                  height: getVerticalSize(1.00),
                                                  width:
                                                      getHorizontalSize(375.00),
                                                  margin: getMargin(top: 5),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .bluegray400))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapQRrequestpagueThree();
                                    },
                                    child: Container(
                                        width: getHorizontalSize(375.00),
                                        decoration: AppDecoration.fillWhiteA700,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 10,
                                                          right: 20,
                                                          bottom: 10),
                                                      child: Text(
                                                          "msg_qr_request_pague"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRegular20))),
                                              Container(
                                                  height: getVerticalSize(1.00),
                                                  width:
                                                      getHorizontalSize(375.00),
                                                  margin: getMargin(top: 5),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .bluegray400))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapPayment();
                                    },
                                    child: Container(
                                        width: getHorizontalSize(375.00),
                                        decoration: AppDecoration.fillWhiteA700,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 10,
                                                          right: 20,
                                                          bottom: 10),
                                                      child: Text(
                                                          "lbl_payment".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRegular20))),
                                              Container(
                                                  height: getVerticalSize(1.00),
                                                  width:
                                                      getHorizontalSize(375.00),
                                                  margin: getMargin(top: 5),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .bluegray400))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapReceipt();
                                    },
                                    child: Container(
                                        width: getHorizontalSize(375.00),
                                        decoration: AppDecoration.fillWhiteA700,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 10,
                                                          right: 20,
                                                          bottom: 10),
                                                      child: Text(
                                                          "lbl_receipt".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRegular20))),
                                              Container(
                                                  height: getVerticalSize(1.00),
                                                  width:
                                                      getHorizontalSize(375.00),
                                                  margin: getMargin(top: 5),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .bluegray400))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapTransfer();
                                    },
                                    child: Container(
                                        width: getHorizontalSize(375.00),
                                        decoration: AppDecoration.fillWhiteA700,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 10,
                                                          right: 20,
                                                          bottom: 10),
                                                      child: Text(
                                                          "lbl_transfer".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRegular20))),
                                              Container(
                                                  height: getVerticalSize(1.00),
                                                  width:
                                                      getHorizontalSize(375.00),
                                                  margin: getMargin(top: 5),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .bluegray400))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapTransferpageOne();
                                    },
                                    child: Container(
                                        width: getHorizontalSize(375.00),
                                        decoration: AppDecoration.fillWhiteA700,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 10,
                                                          right: 20,
                                                          bottom: 10),
                                                      child: Text(
                                                          "msg_transfer_page_one"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRegular20))),
                                              Container(
                                                  height: getVerticalSize(1.00),
                                                  width:
                                                      getHorizontalSize(375.00),
                                                  margin: getMargin(top: 5),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .bluegray400))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapTransferpageTwo();
                                    },
                                    child: Container(
                                        width: getHorizontalSize(375.00),
                                        decoration: AppDecoration.fillWhiteA700,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 10,
                                                          right: 20,
                                                          bottom: 10),
                                                      child: Text(
                                                          "msg_transfer_page_two"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRegular20))),
                                              Container(
                                                  height: getVerticalSize(1.00),
                                                  width:
                                                      getHorizontalSize(375.00),
                                                  margin: getMargin(top: 5),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .bluegray400))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapTransferpageThree();
                                    },
                                    child: Container(
                                        width: getHorizontalSize(375.00),
                                        decoration: AppDecoration.fillWhiteA700,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 10,
                                                          right: 20,
                                                          bottom: 10),
                                                      child: Text(
                                                          "msg_transfer_page_three"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRegular20))),
                                              Container(
                                                  height: getVerticalSize(1.00),
                                                  width:
                                                      getHorizontalSize(375.00),
                                                  margin: getMargin(top: 5),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .bluegray400))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapReceiptOne();
                                    },
                                    child: Container(
                                        width: getHorizontalSize(375.00),
                                        decoration: AppDecoration.fillWhiteA700,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 10,
                                                          right: 20,
                                                          bottom: 10),
                                                      child: Text(
                                                          "lbl_receipt_one".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRegular20))),
                                              Container(
                                                  height: getVerticalSize(1.00),
                                                  width:
                                                      getHorizontalSize(375.00),
                                                  margin: getMargin(top: 5),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .bluegray400))
                                            ])))
                              ]))))
            ])));
  }

  onTapHome() {
    Get.toNamed(AppRoutes.homeScreen);
  }

  onTapLOGIN() {
    Get.toNamed(AppRoutes.logInScreen);
  }

  onTapQRRequest() {
    Get.toNamed(AppRoutes.qrRequestScreen);
  }

  onTapSPLASH() {
    Get.toNamed(AppRoutes.splashScreen);
  }

  onTapQRrequestpageTwo() {
    Get.toNamed(AppRoutes.qrRequestPageTwoScreen);
  }

  onTapQRrequestpagueThree() {
    Get.toNamed(AppRoutes.qrRequestPagueThreeScreen);
  }

  onTapPayment() {
    Get.toNamed(AppRoutes.paymentScreen);
  }

  onTapReceipt() {
    Get.toNamed(AppRoutes.receiptScreen);
  }

  onTapTransfer() {
    Get.toNamed(AppRoutes.transferScreen);
  }

  onTapTransferpageOne() {
    Get.toNamed(AppRoutes.transferPageOneScreen);
  }

  onTapTransferpageTwo() {
    Get.toNamed(AppRoutes.transferPageTwoScreen);
  }

  onTapTransferpageThree() {
    Get.toNamed(AppRoutes.transferPageThreeScreen);
  }

  onTapReceiptOne() {
    Get.toNamed(AppRoutes.receiptOneScreen);
  }
}
