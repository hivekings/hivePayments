import 'controller/transfer_page_three_controller.dart';
import 'package:flutter/material.dart';
import 'package:hive_payments/core/app_export.dart';
import 'package:hive_payments/widgets/app_bar/appbar_image.dart';
import 'package:hive_payments/widgets/app_bar/appbar_title.dart';
import 'package:hive_payments/widgets/app_bar/custom_app_bar.dart';
import 'package:hive_payments/widgets/custom_button.dart';

class TransferPageThreeScreen extends GetWidget<TransferPageThreeController> {
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
                    onTap: onTapArrowleft8),
                title: AppbarTitle(
                    text: "lbl_transfer".tr, margin: getMargin(left: 8))),
            body: Container(
                width: size.width,
                padding: getPadding(all: 24),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                width: getSize(32.00),
                                padding: getPadding(
                                    left: 12, top: 5, right: 12, bottom: 5),
                                decoration: AppDecoration.txtOutlineRedA400
                                    .copyWith(
                                        borderRadius: BorderRadiusStyle
                                            .txtCircleBorder16),
                                child: Text("lbl_1".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtRobotoRomanBold16RedA400)),
                            Container(
                                height: getVerticalSize(2.00),
                                width: getHorizontalSize(80.00),
                                margin: getMargin(top: 16, bottom: 14),
                                decoration: BoxDecoration(
                                    color: ColorConstant.redA400)),
                            Container(
                                width: getSize(32.00),
                                padding: getPadding(
                                    left: 10, top: 5, right: 10, bottom: 5),
                                decoration: AppDecoration.txtOutlineRedA400
                                    .copyWith(
                                        borderRadius: BorderRadiusStyle
                                            .txtCircleBorder16),
                                child: Text("lbl_2".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtRobotoRomanBold16RedA400)),
                            Container(
                                height: getVerticalSize(2.00),
                                width: getHorizontalSize(80.00),
                                margin: getMargin(top: 16, bottom: 14),
                                decoration: BoxDecoration(
                                    color: ColorConstant.redA400)),
                            Container(
                                width: getSize(32.00),
                                padding: getPadding(
                                    left: 10, top: 5, right: 10, bottom: 5),
                                decoration: AppDecoration.txtFillRedA400
                                    .copyWith(
                                        borderRadius: BorderRadiusStyle
                                            .txtCircleBorder16),
                                child: Text("lbl_3".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoRomanBold16))
                          ]),
                      Padding(
                          padding: getPadding(top: 77),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(top: 4),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                              height: getSize(12.00),
                                              width: getSize(12.00),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              6.00)),
                                                  border: Border.all(
                                                      color: ColorConstant
                                                          .gray90002,
                                                      width: getHorizontalSize(
                                                          1.00)))),
                                          Container(
                                              height: getVerticalSize(56.00),
                                              width: getHorizontalSize(1.00),
                                              margin:
                                                  getMargin(top: 10, right: 5),
                                              decoration: BoxDecoration(
                                                  color:
                                                      ColorConstant.gray90002)),
                                          Container(
                                              height: getSize(12.00),
                                              width: getSize(12.00),
                                              margin: getMargin(top: 10),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              6.00)),
                                                  border: Border.all(
                                                      color: ColorConstant
                                                          .gray90002,
                                                      width: getHorizontalSize(
                                                          1.00)))),
                                          Container(
                                              height: getVerticalSize(56.00),
                                              width: getHorizontalSize(1.00),
                                              margin:
                                                  getMargin(top: 10, right: 5),
                                              decoration: BoxDecoration(
                                                  color:
                                                      ColorConstant.gray90002))
                                        ])),
                                Padding(
                                    padding: getPadding(left: 20, bottom: 39),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_to".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRobotoRomanMedium16RedA400),
                                          Padding(
                                              padding: getPadding(top: 8),
                                              child: Text(
                                                  "msg_wilde_sunglasses2".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRomanRegular12WhiteA700)),
                                          Padding(
                                              padding: getPadding(top: 45),
                                              child: Text("lbl_memo".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRomanMedium16RedA400)),
                                          Padding(
                                              padding: getPadding(top: 8),
                                              child: Text(
                                                  "msg_wilde_sunglasses".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRomanRegular12WhiteA700))
                                        ]))
                              ])),
                      Padding(
                          padding: getPadding(top: 5),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    height: getSize(12.00),
                                    width: getSize(12.00),
                                    margin: getMargin(top: 4, bottom: 25),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(6.00)),
                                        border: Border.all(
                                            color: ColorConstant.gray90002,
                                            width: getHorizontalSize(1.00)))),
                                Padding(
                                    padding: getPadding(left: 20),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_amount".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRobotoRomanMedium16RedA400),
                                          Padding(
                                              padding: getPadding(top: 7),
                                              child: Text("lbl_350".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRomanRegular12WhiteA700))
                                        ]))
                              ])),
                      CustomButton(
                          height: 40,
                          width: 312,
                          text: "lbl_confirm_payment".tr,
                          margin: getMargin(top: 80),
                          onTap: onTapConfirmpaymentOne),
                      CustomButton(
                          height: 40,
                          width: 312,
                          text: "lbl_cancel".tr,
                          margin: getMargin(top: 42, bottom: 5),
                          variant: ButtonVariant.OutlineRedA400,
                          fontStyle: ButtonFontStyle.RobotoMedium14RedA400,
                          onTap: onTapCancel)
                    ]))));
  }

  onTapConfirmpaymentOne() {
    Get.toNamed(AppRoutes.receiptOneScreen);
  }

  onTapCancel() {
    Get.toNamed(AppRoutes.homeScreen);
  }

  onTapArrowleft8() {
    Get.back();
  }
}
