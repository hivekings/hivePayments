import 'controller/log_in_controller.dart';
import 'package:flutter/material.dart';
import 'package:hive_payments/core/app_export.dart';
import 'package:hive_payments/widgets/custom_button.dart';

class LogInScreen extends GetWidget<LogInController> {
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
              begin: Alignment(
                0.5,
                0,
              ),
              end: Alignment(
                0.5,
                1,
              ),
              colors: [
                ColorConstant.black900,
                ColorConstant.gray900Bc,
              ],
            ),
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgLogin,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: size.width,
            padding: getPadding(
              left: 24,
              top: 44,
              right: 24,
              bottom: 44,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Spacer(),
                CustomImageView(
                  svgPath: ImageConstant.imgLogorojo,
                  height: getVerticalSize(
                    99.00,
                  ),
                  width: getHorizontalSize(
                    113.00,
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    184.00,
                  ),
                  margin: getMargin(
                    top: 49,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_welcome_to".tr,
                          style: TextStyle(
                            color: ColorConstant.whiteA700,
                            fontSize: getFontSize(
                              24,
                            ),
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
                            letterSpacing: getHorizontalSize(
                              0.30,
                            ),
                          ),
                        ),
                        TextSpan(
                          text: "lbl_hivepayments".tr,
                          style: TextStyle(
                            color: ColorConstant.redA400,
                            fontSize: getFontSize(
                              24,
                            ),
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
                            letterSpacing: getHorizontalSize(
                              0.60,
                            ),
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 14,
                  ),
                  child: Text(
                    "msg_all_your_hive_transactions".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoRomanRegular14.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.10,
                      ),
                    ),
                  ),
                ),
                CustomButton(
                  height: 40,
                  width: 312,
                  text: "msg_connect_with_keychain".tr,
                  margin: getMargin(
                    top: 70,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 148,
                  ),
                  child: Text(
                    "lbl_need_help".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoRomanRegular12.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.10,
                      ),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
