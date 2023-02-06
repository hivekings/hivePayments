import '../controller/home_controller.dart';
import '../models/listellipsenine_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hive_payments/core/app_export.dart';

// ignore: must_be_immutable
class ListellipsenineItemWidget extends StatelessWidget {
  ListellipsenineItemWidget(this.listellipsenineItemModelObj);

  ListellipsenineItemModel listellipsenineItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 7,
        right: 7,
      ),
      decoration: AppDecoration.outlineBlack9004c1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: getPadding(
              left: 7,
              top: 10,
              right: 7,
            ),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse9,
                  height: getSize(
                    36.00,
                  ),
                  width: getSize(
                    36.00,
                  ),
                  radius: BorderRadius.circular(
                    getHorizontalSize(
                      18.00,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 8,
                    top: 2,
                    bottom: 3,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "lbl_transfer".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoRomanMedium13,
                          ),
                          Container(
                            height: getSize(
                              2.00,
                            ),
                            width: getSize(
                              2.00,
                            ),
                            margin: getMargin(
                              left: 4,
                              top: 7,
                              bottom: 6,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.gray50001,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  1.00,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 4,
                              top: 3,
                              bottom: 1,
                            ),
                            child: Text(
                              "lbl_2_hs".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRomanRegular9,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: getPadding(
                          top: 3,
                        ),
                        child: Text(
                          "msg_confirmations_14_15".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoRomanMedium9,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: getPadding(
                    top: 10,
                    bottom: 10,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl".tr,
                          style: TextStyle(
                            color: ColorConstant.orange700,
                            fontSize: getFontSize(
                              12,
                            ),
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        TextSpan(
                          text: " ",
                          style: TextStyle(
                            color: ColorConstant.orange700,
                            fontSize: getFontSize(
                              12,
                            ),
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: "lbl_500_hive".tr,
                          style: TextStyle(
                            color: ColorConstant.orange700,
                            fontSize: getFontSize(
                              12,
                            ),
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                CustomImageView(
                  svgPath: ImageConstant.imgClock,
                  height: getSize(
                    20.00,
                  ),
                  width: getSize(
                    20.00,
                  ),
                  margin: getMargin(
                    left: 8,
                    top: 8,
                    bottom: 8,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: getVerticalSize(
              1.00,
            ),
            width: getHorizontalSize(
              263.00,
            ),
            margin: getMargin(
              top: 10,
            ),
            decoration: BoxDecoration(
              color: ColorConstant.orange70066,
            ),
          ),
        ],
      ),
    );
  }
}
