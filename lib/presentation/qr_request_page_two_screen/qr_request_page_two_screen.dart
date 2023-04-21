import 'controller/qr_request_page_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:hive_payments/core/app_export.dart';
import 'package:hive_payments/widgets/app_bar/appbar_image.dart';
import 'package:hive_payments/widgets/app_bar/appbar_title.dart';
import 'package:hive_payments/widgets/app_bar/custom_app_bar.dart';
import 'package:hive_payments/widgets/custom_button.dart';
import 'package:hive_payments/widgets/custom_icon_button.dart';
import 'package:hive_payments/widgets/custom_text_form_field.dart';

class QrRequestPageTwoScreen extends GetWidget<QrRequestPageTwoController> {
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
                    margin: getMargin(left: 24, top: 15, bottom: 16),
                    onTap: onTapArrowleft1),
                title: AppbarTitle(
                    text: "msg_qr_payment_request".tr.toUpperCase(),
                    margin: getMargin(left: 8))),
            body: Container(
                width: size.width,
                padding: getPadding(top: 23, bottom: 23),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                width: getSize(32.00),
                                padding: getPadding(
                                    left: 5, top: 5, right: 5, bottom: 5),
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
                                    left: 5, top: 5, right: 5, bottom: 5),
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
                                    left: 5, top: 5, right: 5, bottom: 5),
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
                              padding: getPadding(left: 24, top: 45),
                              child: Text("lbl_memo".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoRomanMedium16))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 24, top: 7),
                              child: Text("msg_enter_a_short_descrption".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtRobotoRomanRegular12WhiteA700))),
                      CustomTextFormField(
                          width: 312,
                          focusNode: FocusNode(),
                          controller: controller.tEXTFIELDController,
                          hintText: "lbl_description".tr,
                          margin: getMargin(top: 80),
                          textInputAction: TextInputAction.done),
                      CustomButton(
                          height: 40,
                          width: 312,
                          text: "lbl_continue".tr,
                          margin: getMargin(top: 56),
                          onTap: onTapContinue),
                    ]))));
  }

  onTapContinue() {
    var data = {
      "quantity": controller.quantitydata.value,
      "memo": controller.tEXTFIELDController.value.text,
      "currency": controller.currencyData
    };
    Get.toNamed(AppRoutes.qrRequestPagueThreeScreen, arguments: data);
  }

  onTapArrowleft1() {
    Get.back();
  }
}
