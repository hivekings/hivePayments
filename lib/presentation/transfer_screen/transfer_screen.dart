import 'controller/transfer_controller.dart';
import 'package:flutter/material.dart';
import 'package:hive_payments/core/app_export.dart';
import 'package:hive_payments/widgets/app_bar/appbar_image.dart';
import 'package:hive_payments/widgets/app_bar/appbar_title.dart';
import 'package:hive_payments/widgets/app_bar/custom_app_bar.dart';

class TransferScreen extends GetWidget<TransferController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.black900,
            appBar: CustomAppBar(
                height: getVerticalSize(24.00),
                leadingWidth: 48,
                leading: AppbarImage(
                    height: getSize(24.00),
                    width: getSize(24.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24),
                    onTap: onTapArrowleft5),
                title: AppbarTitle(
                    text: "lbl_transfer".tr, margin: getMargin(left: 8))),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(left: 24, top: 50, right: 24),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("lbl_recents".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtRobotoRomanMedium16Gray500),
                              Padding(
                                  padding: getPadding(top: 19),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgEllipse45,
                                                  height: getSize(48.00),
                                                  width: getSize(48.00),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(
                                                          24.00))),
                                              Padding(
                                                  padding: getPadding(top: 9),
                                                  child: Text("lbl_user".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterMedium12))
                                            ]),
                                        Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgEllipse4548x48,
                                                  height: getSize(48.00),
                                                  width: getSize(48.00),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(
                                                          24.00))),
                                              Padding(
                                                  padding: getPadding(top: 9),
                                                  child: Text("lbl_user".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterMedium12))
                                            ]),
                                        Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgEllipse451,
                                                  height: getSize(48.00),
                                                  width: getSize(48.00),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(
                                                          24.00))),
                                              Padding(
                                                  padding: getPadding(top: 9),
                                                  child: Text("lbl_user".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterMedium12))
                                            ]),
                                        Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgEllipse452,
                                                  height: getSize(48.00),
                                                  width: getSize(48.00),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(
                                                          24.00))),
                                              Padding(
                                                  padding: getPadding(top: 9),
                                                  child: Text("lbl_user".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterMedium12))
                                            ]),
                                        Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgEllipse453,
                                                  height: getSize(48.00),
                                                  width: getSize(48.00),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(
                                                          24.00))),
                                              Padding(
                                                  padding: getPadding(top: 9),
                                                  child: Text("lbl_user".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterMedium12))
                                            ])
                                      ])),
                              Padding(
                                  padding: getPadding(top: 30),
                                  child: Row(children: [
                                    Padding(
                                        padding: getPadding(top: 1, bottom: 3),
                                        child: Text("lbl_contacts".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoRomanMedium16Gray500)),
                                    Spacer(),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgPlus,
                                        height: getSize(24.00),
                                        width: getSize(24.00)),
                                    Padding(
                                        padding: getPadding(
                                            left: 4, top: 2, bottom: 2),
                                        child: Text("lbl_add_contact".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoRomanMedium16WhiteA700)),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgSearch,
                                        height: getSize(24.00),
                                        width: getSize(24.00),
                                        margin: getMargin(left: 18))
                                  ])),
                              GestureDetector(
                                  onTap: () {
                                    onTapCARDMOVEMENT();
                                  },
                                  child: Container(
                                      margin: getMargin(top: 32),
                                      padding: getPadding(
                                          left: 14,
                                          top: 10,
                                          right: 14,
                                          bottom: 10),
                                      decoration: AppDecoration
                                          .outlineBlack9004c1
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder8),
                                      child: Row(children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgEllipse95,
                                            height: getSize(36.00),
                                            width: getSize(36.00),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(18.00))),
                                        Padding(
                                            padding: getPadding(
                                                left: 12, top: 3, bottom: 2),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                      "msg_wilde_sunglasses2"
                                                          .tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanMedium13),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 2),
                                                      child: Text(
                                                          "msg_wildesunglasses3"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRomanMedium9))
                                                ])),
                                        Spacer(),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowrightWhiteA700,
                                            height: getSize(20.00),
                                            width: getSize(20.00),
                                            margin:
                                                getMargin(top: 8, bottom: 8))
                                      ]))),
                              GestureDetector(
                                  onTap: () {
                                    onTapCARDMOVEMENT1();
                                  },
                                  child: Container(
                                      margin: getMargin(top: 16),
                                      padding: getPadding(
                                          left: 14,
                                          top: 10,
                                          right: 14,
                                          bottom: 10),
                                      decoration: AppDecoration
                                          .outlineBlack9004c1
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder8),
                                      child: Row(children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgEllipse96,
                                            height: getSize(36.00),
                                            width: getSize(36.00),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(18.00))),
                                        Padding(
                                            padding: getPadding(
                                                left: 12, top: 3, bottom: 2),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                      "msg_wilde_sunglasses2"
                                                          .tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanMedium13),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 2),
                                                      child: Text(
                                                          "msg_wildesunglasses3"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRomanMedium9))
                                                ])),
                                        Spacer(),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowrightWhiteA700,
                                            height: getSize(20.00),
                                            width: getSize(20.00),
                                            margin:
                                                getMargin(top: 8, bottom: 8))
                                      ]))),
                              GestureDetector(
                                  onTap: () {
                                    onTapCARDMOVEMENT2();
                                  },
                                  child: Container(
                                      margin: getMargin(top: 16),
                                      padding: getPadding(
                                          left: 14,
                                          top: 10,
                                          right: 14,
                                          bottom: 10),
                                      decoration: AppDecoration
                                          .outlineBlack9004c1
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder8),
                                      child: Row(children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgEllipse97,
                                            height: getSize(36.00),
                                            width: getSize(36.00),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(18.00))),
                                        Padding(
                                            padding: getPadding(
                                                left: 12, top: 3, bottom: 2),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                      "msg_wilde_sunglasses2"
                                                          .tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanMedium13),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 2),
                                                      child: Text(
                                                          "msg_wildesunglasses3"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRomanMedium9))
                                                ])),
                                        Spacer(),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowrightWhiteA700,
                                            height: getSize(20.00),
                                            width: getSize(20.00),
                                            margin:
                                                getMargin(top: 8, bottom: 8))
                                      ]))),
                              GestureDetector(
                                  onTap: () {
                                    onTapCARDMOVEMENT3();
                                  },
                                  child: Container(
                                      margin: getMargin(top: 16),
                                      padding: getPadding(
                                          left: 14,
                                          top: 10,
                                          right: 14,
                                          bottom: 10),
                                      decoration: AppDecoration
                                          .outlineBlack9004c1
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder8),
                                      child: Row(children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgEllipse98,
                                            height: getSize(36.00),
                                            width: getSize(36.00),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(18.00))),
                                        Padding(
                                            padding: getPadding(
                                                left: 12, top: 3, bottom: 2),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                      "msg_wilde_sunglasses2"
                                                          .tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanMedium13),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 2),
                                                      child: Text(
                                                          "msg_wildesunglasses3"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRomanMedium9))
                                                ])),
                                        Spacer(),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowrightWhiteA700,
                                            height: getSize(20.00),
                                            width: getSize(20.00),
                                            margin:
                                                getMargin(top: 8, bottom: 8))
                                      ]))),
                              GestureDetector(
                                  onTap: () {
                                    onTapCARDMOVEMENT4();
                                  },
                                  child: Container(
                                      margin: getMargin(top: 16),
                                      padding: getPadding(
                                          left: 14,
                                          top: 10,
                                          right: 14,
                                          bottom: 10),
                                      decoration: AppDecoration
                                          .outlineBlack9004c1
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder8),
                                      child: Row(children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgEllipse99,
                                            height: getSize(36.00),
                                            width: getSize(36.00),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(18.00))),
                                        Padding(
                                            padding: getPadding(
                                                left: 12, top: 3, bottom: 2),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                      "msg_wilde_sunglasses2"
                                                          .tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanMedium13),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 2),
                                                      child: Text(
                                                          "msg_wildesunglasses3"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRomanMedium9))
                                                ])),
                                        Spacer(),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowrightWhiteA700,
                                            height: getSize(20.00),
                                            width: getSize(20.00),
                                            margin:
                                                getMargin(top: 8, bottom: 8))
                                      ]))),
                              GestureDetector(
                                  onTap: () {
                                    onTapCARDMOVEMENT5();
                                  },
                                  child: Container(
                                      margin: getMargin(top: 16),
                                      padding: getPadding(
                                          left: 14,
                                          top: 10,
                                          right: 14,
                                          bottom: 10),
                                      decoration: AppDecoration
                                          .outlineBlack9004c1
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder8),
                                      child: Row(children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgEllipse910,
                                            height: getSize(36.00),
                                            width: getSize(36.00),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(18.00))),
                                        Padding(
                                            padding: getPadding(
                                                left: 12, top: 3, bottom: 2),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                      "msg_wilde_sunglasses2"
                                                          .tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanMedium13),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 2),
                                                      child: Text(
                                                          "msg_wildesunglasses3"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRomanMedium9))
                                                ])),
                                        Spacer(),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowrightWhiteA700,
                                            height: getSize(20.00),
                                            width: getSize(20.00),
                                            margin:
                                                getMargin(top: 8, bottom: 8))
                                      ]))),
                              GestureDetector(
                                  onTap: () {
                                    onTapCARDMOVEMENT6();
                                  },
                                  child: Container(
                                      margin: getMargin(top: 16),
                                      padding: getPadding(
                                          left: 14,
                                          top: 10,
                                          right: 14,
                                          bottom: 10),
                                      decoration: AppDecoration
                                          .outlineBlack9004c1
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder8),
                                      child: Row(children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgEllipse911,
                                            height: getSize(36.00),
                                            width: getSize(36.00),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(18.00))),
                                        Padding(
                                            padding: getPadding(
                                                left: 12, top: 3, bottom: 3),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                      "msg_wilde_sunglasses2"
                                                          .tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanMedium13),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 1),
                                                      child: Text(
                                                          "msg_wildesunglasses3"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRomanMedium9))
                                                ])),
                                        Spacer(),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowrightWhiteA700,
                                            height: getSize(20.00),
                                            width: getSize(20.00),
                                            margin:
                                                getMargin(top: 8, bottom: 8))
                                      ])))
                            ]))))));
  }

  onTapCARDMOVEMENT() {
    Get.toNamed(AppRoutes.transferPageOneScreen);
  }

  onTapCARDMOVEMENT1() {
    Get.toNamed(AppRoutes.transferPageOneScreen);
  }

  onTapCARDMOVEMENT2() {
    Get.toNamed(AppRoutes.transferPageOneScreen);
  }

  onTapCARDMOVEMENT3() {
    Get.toNamed(AppRoutes.transferPageOneScreen);
  }

  onTapCARDMOVEMENT4() {
    Get.toNamed(AppRoutes.transferPageOneScreen);
  }

  onTapCARDMOVEMENT5() {
    Get.toNamed(AppRoutes.transferPageOneScreen);
  }

  onTapCARDMOVEMENT6() {
    Get.toNamed(AppRoutes.transferPageOneScreen);
  }

  onTapArrowleft5() {
    Get.back();
  }
}
