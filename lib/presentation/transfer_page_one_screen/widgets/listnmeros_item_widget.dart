import '../controller/transfer_page_one_controller.dart';
import '../models/listnmeros_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hive_payments/core/app_export.dart';

// ignore: must_be_immutable
class ListnmerosItemWidget extends StatelessWidget {
  ListnmerosItemWidget(this.listnmerosItemModelObj);

  ListnmerosItemModel listnmerosItemModelObj;

  var controller = Get.find<TransferPageOneController>();

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
