import 'controller/receipt_controller.dart';
import 'package:flutter/material.dart';
import 'package:hive_payments/core/app_export.dart';
import 'package:hive_payments/widgets/app_bar/appbar_image.dart';
import 'package:hive_payments/widgets/app_bar/appbar_title.dart';
import 'package:hive_payments/widgets/app_bar/custom_app_bar.dart';

class ReceiptScreen extends GetWidget<ReceiptController> {
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
                    margin: getMargin(left: 24, top: 15, bottom: 16),
                    onTap: onTapArrowleft4),
                title: AppbarTitle(
                    text: "lbl_receipt".tr, margin: getMargin(left: 8))),
            body: Container(
                width: size.width,
                padding: getPadding(top: 48, bottom: 48),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(511.00),
                          width: size.width,
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                    width: getHorizontalSize(312.00),
                                    margin: getMargin(left: 24, right: 24),
                                    padding: getPadding(
                                        left: 14,
                                        top: 31,
                                        right: 14,
                                        bottom: 31),
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                ImageConstant.imgGroup2),
                                            fit: BoxFit.cover)),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: getPadding(left: 2),
                                              child: Text("lbl_date".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRomanMedium16WhiteA700)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 2, top: 10, right: 6),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text("lbl_04_12_2022".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtRobotoRomanMedium12Gray50001),
                                                    Text("lbl_12_36".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtRobotoRomanMedium12Gray50001)
                                                  ])),
                                          Padding(
                                              padding:
                                                  getPadding(left: 2, top: 35),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text("lbl_to".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRobotoRomanMedium16WhiteA700),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 10),
                                                              child: Text(
                                                                  "msg_wilde_sunglasses3"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtRobotoRomanMedium12Gray50001))
                                                        ]),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgEllipse44,
                                                        height: getSize(41.00),
                                                        width: getSize(41.00),
                                                        radius: BorderRadius
                                                            .circular(
                                                                getHorizontalSize(
                                                                    20.00)),
                                                        margin: getMargin(
                                                            top: 2, bottom: 1))
                                                  ])),
                                          Padding(
                                              padding:
                                                  getPadding(left: 2, top: 36),
                                              child: Text("lbl_memo".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRomanMedium16WhiteA700)),
                                          Padding(
                                              padding:
                                                  getPadding(left: 2, top: 10),
                                              child: Text(
                                                  "msg_wildesunglasses2".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRomanMedium12Gray50001)),
                                          Padding(
                                              padding:
                                                  getPadding(left: 2, top: 36),
                                              child: Text("lbl_amount".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRomanMedium16WhiteA700)),
                                          Padding(
                                              padding:
                                                  getPadding(left: 2, top: 10),
                                              child: Text("lbl_250_00".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRomanMedium12Gray50001))
                                        ]))),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                    width: getHorizontalSize(312.00),
                                    margin:
                                        getMargin(left: 24, top: 39, right: 24),
                                    padding: getPadding(
                                        left: 45,
                                        top: 21,
                                        right: 45,
                                        bottom: 21),
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                ImageConstant.imgGroup3),
                                            fit: BoxFit.cover)),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 28),
                                              child: Text(
                                                  "msg_transaction_completed"
                                                      .tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterMedium20)),
                                          Padding(
                                              padding: getPadding(top: 6),
                                              child: Text(
                                                  "msg_confirmations_2_15".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRomanMedium12Gray50001))
                                        ]))),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: EdgeInsets.all(0),
                                    color: ColorConstant.black900,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder36),
                                    child: Container(
                                        height: getSize(73.00),
                                        width: getSize(73.00),
                                        padding: getPadding(all: 12),
                                        decoration: AppDecoration.fillBlack900
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder36),
                                        child: Stack(children: [
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgCheckmark,
                                              height: getSize(46.00),
                                              width: getSize(46.00),
                                              alignment: Alignment.center)
                                        ])))),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                    height: getSize(38.00),
                                    width: getSize(38.00),
                                    margin: getMargin(top: 141),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.black900,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(19.00))))),
                            Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                    height: getSize(38.00),
                                    width: getSize(38.00),
                                    margin: getMargin(top: 141),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.black900,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(19.00)))))
                          ])),
                      Padding(
                          padding: getPadding(top: 56),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    padding: getPadding(
                                        left: 10, top: 8, right: 10, bottom: 8),
                                    decoration: AppDecoration.outlineBlack9004c1
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder20),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgDownload,
                                              height: getSize(24.00),
                                              width: getSize(24.00)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 4, top: 4, bottom: 4),
                                              child: Text("lbl_download".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoMedium12WhiteA700
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.10))))
                                        ])),
                                Container(
                                    margin: getMargin(left: 20),
                                    padding: getPadding(
                                        left: 14, top: 8, right: 14, bottom: 8),
                                    decoration: AppDecoration.outlineBlack9004c1
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder20),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant.imgShare,
                                              height: getSize(24.00),
                                              width: getSize(24.00)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 4, top: 4, bottom: 4),
                                              child: Text("lbl_share".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoMedium12WhiteA700
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.10))))
                                        ])),
                                Container(
                                    margin: getMargin(left: 20),
                                    padding: getPadding(
                                        left: 10, top: 8, right: 10, bottom: 8),
                                    decoration: AppDecoration.outlineBlack9004c1
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder20),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgCloseWhiteA700,
                                              height: getSize(24.00),
                                              width: getSize(24.00)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 4, top: 4, bottom: 4),
                                              child: Text("lbl_close".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoMedium12WhiteA700
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.10))))
                                        ]))
                              ]))
                    ]))));
  }

  onTapArrowleft4() {
    Get.back();
  }
}
