import '../qr_request_pague_three_screen/widgets/listellipsethirtyeight_item_widget.dart';
import 'controller/qr_request_pague_three_controller.dart';
import 'models/listellipsethirtyeight_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hive_payments/core/app_export.dart';
import 'package:hive_payments/widgets/app_bar/appbar_image.dart';
import 'package:hive_payments/widgets/app_bar/appbar_title.dart';
import 'package:hive_payments/widgets/app_bar/custom_app_bar.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrRequestPagueThreeScreen
    extends GetWidget<QrRequestPagueThreeController> {
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
                    onTap: onTapArrowleft2),
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
                          padding: getPadding(top: 45),
                          child: Text("lbl_share".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRomanMedium16)),
                      Padding(
                          padding: getPadding(top: 7),
                          child: Text("msg_share_your_qr_to".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  AppStyle.txtRobotoRomanRegular12WhiteA700)),
                      Padding(
                          padding: getPadding(top: 46, right: 105),
                          child: Obx(() => ListView.separated(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(5.00));
                              },
                              itemCount: controller.qrRequestPagueThreeModelObj
                                  .value.listellipsethirtyeightItemList.length,
                              itemBuilder: (context, index) {
                                ListellipsethirtyeightItemModel model =
                                    controller.qrRequestPagueThreeModelObj.value
                                        .listellipsethirtyeightItemList[index];
                                return ListellipsethirtyeightItemWidget(model);
                              }))),
                      Align(
                          alignment: Alignment.center,
                          child: Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              margin: getMargin(top: 32),
                              color: ColorConstant.whiteA700,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder12),
                              child: Container(
                                  height: getVerticalSize(216.00),
                                  width: getHorizontalSize(218.00),
                                  padding: getPadding(
                                      left: 17, top: 16, right: 17, bottom: 16),
                                  decoration: AppDecoration.fillWhiteA700
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder12),
                                  child: Stack(children: [
                                    Obx(() => QrImage(
                                        data: controller.qr.value,
                                        size: 181,
                                        // You can include embeddedImageStyle Property if you
                                        //wanna embed an image from your Asset folder
                                        embeddedImageStyle:
                                            QrEmbeddedImageStyle(
                                          size: const Size(
                                            181,
                                            181,
                                          ),
                                        )))
                                  ])))),
                      Padding(
                          padding: getPadding(top: 48, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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

  onTapArrowleft2() {
    Get.back();
  }
}
