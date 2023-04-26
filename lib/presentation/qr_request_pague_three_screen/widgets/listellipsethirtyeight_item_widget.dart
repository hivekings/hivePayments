import '../controller/qr_request_pague_three_controller.dart';
import '../models/listellipsethirtyeight_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hive_payments/core/app_export.dart';

// ignore: must_be_immutable
class ListellipsethirtyeightItemWidget extends StatelessWidget {
  ListellipsethirtyeightItemWidget(this.listellipsethirtyeightItemModelObj);

  ListellipsethirtyeightItemModel listellipsethirtyeightItemModelObj;

  var controller = Get.find<QrRequestPagueThreeController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: getPadding(
            top: 4,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getSize(
                  12.00,
                ),
                width: getSize(
                  12.00,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      6.00,
                    ),
                  ),
                  border: Border.all(
                    color: ColorConstant.gray90002,
                    width: getHorizontalSize(
                      1.00,
                    ),
                  ),
                ),
              ),
              Container(
                height: getVerticalSize(
                  56.00,
                ),
                width: getHorizontalSize(
                  1.00,
                ),
                margin: getMargin(
                  top: 10,
                  right: 5,
                ),
                decoration: BoxDecoration(
                  color: ColorConstant.gray90002,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: getPadding(
            bottom: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "${listellipsethirtyeightItemModelObj.text}",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtRobotoRomanMedium16RedA400,
              ),
              Padding(
                padding: getPadding(
                  top: 7,
                ),
                child: Text(
                  "${listellipsethirtyeightItemModelObj.value}",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoRomanRegular12WhiteA700,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
