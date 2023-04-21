import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../home_screen/widgets/listellipsenine_item_widget.dart';
import '../home_screen/widgets/listhive_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/listellipsenine_item_model.dart';
import 'models/listhive_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hive_payments/core/app_export.dart';
import 'package:hive_payments/widgets/app_bar/appbar_image.dart';
import 'package:hive_payments/widgets/app_bar/appbar_title.dart';
import 'package:hive_payments/widgets/app_bar/custom_app_bar.dart';

class HomeScreen extends GetWidget<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Stack(
          children: [
            Scaffold(
                extendBody: true,
                extendBodyBehindAppBar: true,
                appBar: CustomAppBar(
                    height: getVerticalSize(57.00),
                    title: Obx(() => AppbarTitle(
                        text:
                            "Welcome back \n${controller.homeModelObj.value.username}",
                        margin: getMargin(left: 24))),
                    actions: [
                      AppbarImage(
                          height: getSize(24.00),
                          width: getSize(24.00),
                          svgPath: ImageConstant.imgNotification,
                          margin: getMargin(
                              left: 24, top: 4, right: 24, bottom: 18))
                    ]),
                body: Container(
                    width: size.width,
                    height: size.height,
                    padding: getPadding(top: 60),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment(0, 0),
                            end: Alignment(1, 1),
                            colors: [
                          ColorConstant.black900,
                          ColorConstant.black90001
                        ])),
                    child: SingleChildScrollView(
                        child: Padding(
                            padding: getPadding(left: 22, top: 31),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: getPadding(left: 2),
                                      child: Row(children: [
                                        Padding(
                                            padding:
                                                getPadding(top: 1, bottom: 1),
                                            child: Text("lbl_balance".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtInterMedium14)),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgEye,
                                            height: getSize(20.00),
                                            width: getSize(20.00),
                                            margin: getMargin(left: 12))
                                      ])),
                                  Container(
                                      height: getVerticalSize(130.00),
                                      child: Obx(() => ListView.separated(
                                          padding: getPadding(left: 2, top: 18),
                                          scrollDirection: Axis.horizontal,
                                          physics: BouncingScrollPhysics(),
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(16.00));
                                          },
                                          itemCount: controller.homeModelObj
                                              .value.listhiveItemList.length,
                                          itemBuilder: (context, index) {
                                            ListhiveItemModel model = controller
                                                .homeModelObj
                                                .value
                                                .listhiveItemList[index];
                                            return ListhiveItemWidget(model);
                                          }))),
                                  Padding(
                                      padding: getPadding(top: 32),
                                      child: Row(children: [
                                        Container(
                                            padding: getPadding(
                                                left: 18,
                                                top: 8,
                                                right: 18,
                                                bottom: 8),
                                            decoration: AppDecoration
                                                .outlineBlack9004c1
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder20),
                                            child: GestureDetector(
                                              onTap: () => {
                                                Get.toNamed(
                                                    AppRoutes.transferScreen)
                                              },
                                              child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgArrowright,
                                                        height: getSize(24.00),
                                                        width: getSize(24.00)),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 6,
                                                            top: 4,
                                                            bottom: 5),
                                                        child: Text(
                                                            "lbl_transfer".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtRobotoMedium12WhiteA700
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(
                                                                            0.10))))
                                                  ]),
                                            )),
                                        Container(
                                            margin: getMargin(left: 8),
                                            padding: getPadding(
                                                left: 13,
                                                top: 8,
                                                right: 13,
                                                bottom: 8),
                                            decoration: AppDecoration
                                                .outlineBlack9004c1
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder20),
                                            child: GestureDetector(
                                              onTap: () => {
                                                Get.toNamed(
                                                    AppRoutes.paymentScreen)
                                              },
                                              child: Row(children: [
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgCalculator,
                                                    height: getSize(24.00),
                                                    width: getSize(24.00)),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 6,
                                                        top: 4,
                                                        bottom: 4),
                                                    child: Text("lbl_qr".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtRobotoMedium12WhiteA700
                                                            .copyWith(
                                                                letterSpacing:
                                                                    getHorizontalSize(
                                                                        0.10))))
                                              ]),
                                            )),
                                        Container(
                                            margin: getMargin(left: 8),
                                            padding: getPadding(
                                                left: 14,
                                                top: 8,
                                                right: 14,
                                                bottom: 8),
                                            decoration: AppDecoration
                                                .outlineBlack9004c1
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder20),
                                            child: GestureDetector(
                                              onTap: () => {
                                                Get.toNamed(
                                                    AppRoutes.qrRequestScreen)
                                              },
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgQrcode,
                                                        height: getSize(24.00),
                                                        width: getSize(24.00)),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 11,
                                                            top: 5,
                                                            right: 4,
                                                            bottom: 3),
                                                        child: Text(
                                                            "lbl_request".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtRobotoMedium12WhiteA700
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(
                                                                            0.10))))
                                                  ]),
                                            ))
                                      ])),
                                  Padding(
                                      padding: getPadding(
                                          left: 2, top: 34, right: 24),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                                padding: getPadding(
                                                    top: 1, bottom: 1),
                                                child: Text(
                                                    "lbl_last_movements".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterMedium14)),
                                            CustomImageView(
                                                onTap: () =>
                                                    {controller.loadMore()},
                                                svgPath: ImageConstant
                                                    .imgOverflowmenu,
                                                height: getSize(20.00),
                                                width: getSize(20.00))
                                          ])),
                                  Padding(
                                      padding: getPadding(
                                          left: 2, top: 0, right: 24),
                                      child: Obx(() => ListView.separated(
                                          physics:
                                              NeverScrollableScrollPhysics(),
                                          shrinkWrap: true,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(16.00));
                                          },
                                          itemCount: controller
                                              .homeModelObj
                                              .value
                                              .listellipsenineItemList
                                              .length,
                                          itemBuilder: (context, index) {
                                            ListellipsenineItemModel model =
                                                controller.homeModelObj.value
                                                        .listellipsenineItemList[
                                                    index];

                                            var tx = {"transaction": model};
                                            var activeU = {
                                              "activeUsername": controller
                                                  .homeModelObj.value.username
                                            };
                                            return GestureDetector(
                                              child: ListellipsenineItemWidget(
                                                  model),
                                              onTap: () => {
                                                Get.toNamed(
                                                  AppRoutes.receiptScreen,
                                                  arguments: tx,
                                                  parameters: activeU,
                                                )
                                              },
                                            );
                                          })))
                                ]))))),
            Obx(() => controller.isLoader.value
                ? const Opacity(
                    opacity: 0.8,
                    child:
                        ModalBarrier(dismissible: false, color: Colors.black),
                  )
                : Container()),
            Obx(() => controller.isLoader.value
                ? const Center(
                    child: SpinKitCircle(
                      color: Colors.white,
                      size: 50.0,
                    ),
                  )
                : Container()),
          ],
        ));
  }
}
