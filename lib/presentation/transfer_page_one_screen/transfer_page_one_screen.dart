import '../transfer_page_one_screen/widgets/listnmeros_item_widget.dart';
import 'controller/transfer_page_one_controller.dart';
import 'models/listnmeros_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hive_payments/core/app_export.dart';
import 'package:hive_payments/widgets/app_bar/appbar_image.dart';
import 'package:hive_payments/widgets/app_bar/appbar_title.dart';
import 'package:hive_payments/widgets/app_bar/custom_app_bar.dart';
import 'package:hive_payments/widgets/custom_button.dart';

class TransferPageOneScreen extends GetWidget<TransferPageOneController> {
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
                    onTap: onTapArrowleft6),
                title: AppbarTitle(
                    text: "lbl_transfer".tr, margin: getMargin(left: 8))),
            body: Container(
                width: size.width,
                padding: getPadding(left: 23, top: 24, right: 23, bottom: 24),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 1, right: 1),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    width: getSize(32.00),
                                    padding: getPadding(
                                        left: 12, top: 5, right: 12, bottom: 5),
                                    decoration: AppDecoration.txtFillRedA400
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtCircleBorder16),
                                    child: Text("lbl_1".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: AppStyle.txtRobotoRomanBold16)),
                                Container(
                                    height: getVerticalSize(2.00),
                                    width: getHorizontalSize(80.00),
                                    margin: getMargin(top: 16, bottom: 14),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.blueGray900)),
                                Container(
                                    width: getSize(32.00),
                                    padding: getPadding(
                                        left: 10, top: 5, right: 10, bottom: 5),
                                    decoration: AppDecoration
                                        .txtOutlineBluegray900
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtCircleBorder16),
                                    child: Text("lbl_2".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: AppStyle
                                            .txtRobotoRomanBold16Bluegray900)),
                                Container(
                                    height: getVerticalSize(2.00),
                                    width: getHorizontalSize(80.00),
                                    margin: getMargin(top: 16, bottom: 14),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.blueGray900)),
                                Container(
                                    width: getSize(32.00),
                                    padding: getPadding(
                                        left: 10, top: 5, right: 10, bottom: 5),
                                    decoration: AppDecoration
                                        .txtOutlineBluegray900
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtCircleBorder16),
                                    child: Text("lbl_3".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: AppStyle
                                            .txtRobotoRomanBold16Bluegray900))
                              ])),
                      Padding(
                          padding: getPadding(left: 1, top: 40),
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
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("msg_wilde_sunglasses2".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtRobotoRomanMedium14),
                                      Padding(
                                          padding: getPadding(top: 1),
                                          child: Text("msg_wildesunglasses3".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRobotoRomanMedium10))
                                    ]))
                          ])),
                      Padding(
                          padding: getPadding(left: 1, top: 38),
                          child: Row(children: [
                            Padding(
                                padding: getPadding(top: 1),
                                child: Text("lbl_currency".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtRobotoRomanMedium16Gray500)),
                            Padding(
                                padding: getPadding(left: 11, bottom: 1),
                                child: Text("lbl_hive2".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtRobotoRomanMedium16RedA400)),
                            CustomImageView(
                                svgPath: ImageConstant.imgArrowdown,
                                height: getSize(16.00),
                                width: getSize(16.00),
                                margin: getMargin(left: 7, top: 2, bottom: 2))
                          ])),
                      Padding(
                          padding: getPadding(left: 1, top: 16),
                          child: Text("lbl_amount".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRomanMedium16Gray500)),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 21),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 6, bottom: 12),
                                        child: Text("lbl2".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoRomanMedium32)),
                                    Padding(
                                        padding: getPadding(left: 8),
                                        child: Text("lbl_0_00".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoRomanMedium48))
                                  ]))),
                      Padding(
                          padding: getPadding(top: 40, right: 2),
                          child: Obx(() => ListView.separated(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(16.00));
                              },
                              itemCount: controller.transferPageOneModelObj
                                  .value.listnmerosItemList.length,
                              itemBuilder: (context, index) {
                                ListnmerosItemModel model = controller
                                    .transferPageOneModelObj
                                    .value
                                    .listnmerosItemList[index];
                                return ListnmerosItemWidget(model);
                              })))
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 24, right: 24, bottom: 48),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CustomButton(
                      height: 40,
                      width: 312,
                      text: "lbl_continue".tr,
                      onTap: onTapContinue)
                ]))));
  }

  onTapContinue() {
    Get.toNamed(AppRoutes.transferPageTwoScreen);
  }

  onTapArrowleft6() {
    Get.back();
  }
}
