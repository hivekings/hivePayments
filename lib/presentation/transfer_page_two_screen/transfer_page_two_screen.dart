import 'controller/transfer_page_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:hive_payments/core/app_export.dart';
import 'package:hive_payments/widgets/app_bar/appbar_image.dart';
import 'package:hive_payments/widgets/app_bar/appbar_title.dart';
import 'package:hive_payments/widgets/app_bar/custom_app_bar.dart';
import 'package:hive_payments/widgets/custom_button.dart';
import 'package:hive_payments/widgets/custom_icon_button.dart';
import 'package:hive_payments/widgets/custom_text_form_field.dart';

class TransferPageTwoScreen extends GetWidget<TransferPageTwoController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.black900,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 48,
                leading: AppbarImage(
                    height: getSize(24.00),
                    width: getSize(24.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24, top: 16, bottom: 15),
                    onTap: onTapArrowleft7),
                title: AppbarTitle(
                    text: "lbl_transfer".tr, margin: getMargin(left: 8))),
            body: Container(
                width: size.width,
                padding: getPadding(top: 24, bottom: 24),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
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
                                margin:
                                    getMargin(left: 14, top: 16, bottom: 14),
                                decoration: BoxDecoration(
                                    color: ColorConstant.redA400)),
                            Container(
                                width: getSize(32.00),
                                margin: getMargin(left: 14),
                                padding: getPadding(
                                    left: 10, top: 5, right: 10, bottom: 5),
                                decoration: AppDecoration.txtFillRedA400
                                    .copyWith(
                                        borderRadius: BorderRadiusStyle
                                            .txtCircleBorder16),
                                child: Text("lbl_2".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoRomanBold16)),
                            Container(
                                height: getVerticalSize(2.00),
                                width: getHorizontalSize(80.00),
                                margin:
                                    getMargin(left: 14, top: 16, bottom: 14),
                                decoration: BoxDecoration(
                                    color: ColorConstant.blueGray900)),
                            Container(
                                width: getSize(32.00),
                                margin: getMargin(left: 14),
                                padding: getPadding(
                                    left: 10, top: 5, right: 10, bottom: 5),
                                decoration: AppDecoration.txtOutlineBluegray900
                                    .copyWith(
                                        borderRadius: BorderRadiusStyle
                                            .txtCircleBorder16),
                                child: Text("lbl_3".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtRobotoRomanBold16Bluegray900))
                          ]),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 24, top: 40),
                              child: Row(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgEllipse44,
                                    height: getSize(42.00),
                                    width: getSize(42.00),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(21.00))),
                                Padding(
                                    padding:
                                        getPadding(left: 16, top: 6, bottom: 5),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("msg_wilde_sunglasses2".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRobotoRomanMedium14),
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text(
                                                  "msg_wildesunglasses3".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRomanMedium10))
                                        ]))
                              ]))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 24, top: 40),
                              child: Text("lbl_memo".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtRobotoRomanMedium16Gray500))),
                      CustomTextFormField(
                          width: 312,
                          focusNode: FocusNode(),
                          controller: controller.tEXTFIELDController,
                          hintText: "lbl_description".tr,
                          margin: getMargin(top: 70),
                          textInputAction: TextInputAction.done),
                      CustomButton(
                          height: 40,
                          width: 312,
                          text: "lbl_continue".tr,
                          margin: getMargin(top: 56),
                          onTap: onTapContinue),
                      Container(
                          width: size.width,
                          margin: getMargin(top: 42, bottom: 5),
                          padding: getPadding(top: 7, bottom: 7),
                          decoration: AppDecoration.fillBluegray90001,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CustomIconButton(
                                    height: 30,
                                    width: 30,
                                    variant:
                                        IconButtonVariant.OutlineBlack90044,
                                    shape: IconButtonShape.CircleBorder15,
                                    padding: IconButtonPadding.PaddingAll3,
                                    child: CustomImageView(
                                        svgPath:
                                            ImageConstant.imgArrowleftGray700)),
                                Padding(
                                    padding: getPadding(top: 5, bottom: 2),
                                    child: Text("lbl_suggest".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoRegular18)),
                                Container(
                                    height: getVerticalSize(22.00),
                                    width: getHorizontalSize(1.00),
                                    margin: getMargin(top: 4, bottom: 4),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.blueGray800)),
                                Padding(
                                    padding: getPadding(top: 5, bottom: 2),
                                    child: Text("lbl_suggest".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoRegular18)),
                                Container(
                                    height: getVerticalSize(22.00),
                                    width: getHorizontalSize(1.00),
                                    margin: getMargin(top: 4, bottom: 4),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.blueGray800)),
                                Padding(
                                    padding: getPadding(top: 5, bottom: 2),
                                    child: Text("lbl_suggest".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoRegular18)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgUpload,
                                    height: getSize(24.00),
                                    width: getSize(24.00),
                                    margin: getMargin(top: 3, bottom: 3))
                              ]))
                    ]))));
  }

  onTapContinue() {
    Get.toNamed(AppRoutes.transferPageThreeScreen);
  }

  onTapArrowleft7() {
    Get.back();
  }
}
