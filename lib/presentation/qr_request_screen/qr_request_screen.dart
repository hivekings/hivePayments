import '../qr_request_screen/widgets/qr_request_item_widget.dart';
import 'controller/qr_request_controller.dart';
import 'models/qr_request_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hive_payments/core/app_export.dart';
import 'package:hive_payments/widgets/app_bar/appbar_image.dart';
import 'package:hive_payments/widgets/app_bar/appbar_title.dart';
import 'package:hive_payments/widgets/app_bar/custom_app_bar.dart';
import 'package:hive_payments/widgets/custom_button.dart';

// ignore: must_be_immutable
class QrRequestScreen extends GetWidget<QrRequestController> {
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
                    onTap: onTapArrowleft),
                title: AppbarTitle(
                    text: "msg_qr_payment_request".tr.toUpperCase(),
                    margin: getMargin(left: 8))),
            body: Container(
                width: size.width,
                padding: getPadding(left: 24, top: 23, right: 24, bottom: 23),
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
                                    left: 5, top: 5, right: 5, bottom: 5),
                                decoration: AppDecoration.txtFillRedA400
                                    .copyWith(
                                        borderRadius: BorderRadiusStyle
                                            .txtCircleBorder16),
                                child: Text("lbl_1".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
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
                                    left: 5, top: 5, right: 5, bottom: 5),
                                decoration: AppDecoration.txtOutlineBluegray900
                                    .copyWith(
                                        borderRadius: BorderRadiusStyle
                                            .txtCircleBorder16),
                                child: Text("lbl_2".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
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
                                    left: 5, top: 5, right: 5, bottom: 5),
                                decoration: AppDecoration.txtOutlineBluegray900
                                    .copyWith(
                                        borderRadius: BorderRadiusStyle
                                            .txtCircleBorder16),
                                child: Text("lbl_3".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: AppStyle
                                        .txtRobotoRomanBold16Bluegray900))
                          ]),
                      Padding(
                          padding: getPadding(top: 45),
                          child: Text("lbl_amount".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRomanMedium16)),
                      Padding(
                          padding: getPadding(top: 7),
                          child: Text("msg_select_the_amount".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtArchivoRomanRegular12)),
                      Padding(
                          padding: getPadding(top: 13),
                          child: Row(children: [
                            Padding(
                                padding: getPadding(top: 1),
                                child: Text("lbl_currency".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtRobotoRomanMedium16Gray500)),
                            DropdownButton(
                                value:
                                    "${controller.qrRequestModelObj.value.currency}",
                                selectedItemBuilder: (BuildContext context) {
                                  //<-- SEE HERE
                                  return controller.listaCurrency
                                      .map((String value) {
                                    return Text(
                                        "${controller.qrRequestModelObj.value.currency}",
                                        style:
                                            AppStyle.txtRobotoRomanMedium32RED);
                                  }).toList();
                                },
                                style: const TextStyle(color: Colors.red),
                                items: controller.listaCurrency
                                    .map<DropdownMenuItem<String>>(
                                        (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: controller.setSelection),
                          ])),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 37),
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
                                        padding: getPadding(left: 21),
                                        child: Obx(() => Text(
                                            "${controller.quantity.value}",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoRomanMedium48)))
                                  ]))),
                      Padding(
                          padding: getPadding(top: 56),
                          child: Obx(() => ListView.separated(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(16.00));
                              },
                              itemCount: controller.qrRequestModelObj.value
                                  .qrRequestItemList.length,
                              itemBuilder: (context, index) {
                                QrRequestItemModel model = controller
                                    .qrRequestModelObj
                                    .value
                                    .qrRequestItemList[index];

                                return QrRequestItemWidget(model);
                              })))
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 24, right: 24, bottom: 56),
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
    var data = {
      "quantity": controller.quantity,
      "currency": controller.qrRequestModelObj.value.currency
    };
    Get.toNamed(
      AppRoutes.qrRequestPageTwoScreen,
      arguments: data,
    );
  }

  onTapArrowleft() {
    Get.back();
  }
}
