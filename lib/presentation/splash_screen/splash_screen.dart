import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:hive_payments/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.5, 1),
                        colors: [
                          ColorConstant.black900,
                          ColorConstant.gray900Bc
                        ]),
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgLogin),
                        fit: BoxFit.cover)),
                child: Container(
                    width: size.width,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                              svgPath: ImageConstant.imgLogorojo,
                              height: getVerticalSize(99.00),
                              width: getHorizontalSize(113.00)),
                          Padding(
                              padding: getPadding(top: 31, bottom: 6),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "lbl_powered_by".tr,
                                        style: TextStyle(
                                            color: ColorConstant.whiteA700,
                                            fontSize: getFontSize(14),
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w500)),
                                    TextSpan(
                                        text: " ",
                                        style: TextStyle(
                                            color: ColorConstant.redA400,
                                            fontSize: getFontSize(14),
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w500)),
                                    TextSpan(
                                        text: "lbl_hivekings".tr,
                                        style: TextStyle(
                                            color: ColorConstant.redA400,
                                            fontSize: getFontSize(14),
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w700))
                                  ]),
                                  textAlign: TextAlign.left))
                        ])))));
  }
}
