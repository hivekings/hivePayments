import '../controller/home_controller.dart';
import '../models/listhive_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hive_payments/core/app_export.dart';

// ignore: must_be_immutable
class ListhiveItemWidget extends StatelessWidget {
  ListhiveItemWidget(this.listhiveItemModelObj);

  ListhiveItemModel listhiveItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        margin: getMargin(
          right: 16,
        ),
        padding: getPadding(
          left: 16,
          top: 12,
          right: 16,
          bottom: 12,
        ),
        decoration: AppDecoration.outlineBlack9004c.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: getPadding(
                left: 2,
                top: 1,
              ),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage5,
                    height: getVerticalSize(
                      13.00,
                    ),
                    width: getHorizontalSize(
                      16.00,
                    ),
                    margin: getMargin(
                      top: 3,
                      bottom: 3,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 4,
                      top: 2,
                      bottom: 2,
                    ),
                    child: Text(
                      listhiveItemModelObj.getTipoMoneda(),
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoMedium12,
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgOverflowmenu,
                    height: getSize(
                      20.00,
                    ),
                    width: getSize(
                      20.00,
                    ),
                    margin: getMargin(
                      left: 132,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                left: 22,
                top: 12,
              ),
              child: Text(
                listhiveItemModelObj.getValor(),
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtRobotoMedium16,
              ),
            ),
            Padding(
                padding: getPadding(
                  left: 22,
                  top: 1,
                ),
                child: Text(
                  listhiveItemModelObj.getUsdValue(),
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoRomanRegular10,
                )),
            CustomImageView(
              svgPath: ImageConstant.imgPlus,
              height: getSize(
                20.00,
              ),
              width: getSize(
                20.00,
              ),
              alignment: Alignment.centerRight,
              margin: getMargin(
                top: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
