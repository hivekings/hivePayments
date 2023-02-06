import '../controller/qr_request_controller.dart';
import '../models/qr_request_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hive_payments/core/app_export.dart';

// ignore: must_be_immutable
class QrRequestItemWidget extends StatelessWidget {
  QrRequestItemWidget(this.qrRequestItemModelObj);

  QrRequestItemModel qrRequestItemModelObj;

  var controller = Get.find<QrRequestController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: getHorizontalSize(
            66.00,
          ),
          padding: getPadding(
            left: 28,
            top: 19,
            right: 28,
            bottom: 19,
          ),
          decoration: AppDecoration.txtOutlineBlack9004c.copyWith(
            borderRadius: BorderRadiusStyle.txtRoundedBorder12,
          ),
          child: Text(
            "lbl_1".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtInterBold20,
          ),
        ),
        Container(
          width: getHorizontalSize(
            66.00,
          ),
          padding: getPadding(
            left: 26,
            top: 19,
            right: 26,
            bottom: 19,
          ),
          decoration: AppDecoration.txtOutlineBlack9004c.copyWith(
            borderRadius: BorderRadiusStyle.txtRoundedBorder12,
          ),
          child: Text(
            "lbl_2".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtInterBold20,
          ),
        ),
        Container(
          width: getHorizontalSize(
            66.00,
          ),
          padding: getPadding(
            left: 26,
            top: 19,
            right: 26,
            bottom: 19,
          ),
          decoration: AppDecoration.txtOutlineBlack9004c.copyWith(
            borderRadius: BorderRadiusStyle.txtRoundedBorder12,
          ),
          child: Text(
            "lbl_3".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtInterBold20,
          ),
        ),
        Container(
          width: getHorizontalSize(
            66.00,
          ),
          padding: getPadding(
            left: 26,
            top: 19,
            right: 26,
            bottom: 19,
          ),
          decoration: AppDecoration.txtOutlineBlack9004c.copyWith(
            borderRadius: BorderRadiusStyle.txtRoundedBorder12,
          ),
          child: Text(
            "lbl_4".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtInterBold20,
          ),
        ),
      ],
    );
  }
}
