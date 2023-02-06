import 'package:flutter/material.dart';
import 'package:hive_payments/core/app_export.dart';

// ignore: must_be_immutable
class AppbarTitle extends StatelessWidget {
  AppbarTitle({required this.text, this.margin, this.onTap});

  String text;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Container(
          width: getHorizontalSize(
            132.00,
          ),
          child: Text(
            text,
            maxLines: null,
            textAlign: TextAlign.left,
            style: AppStyle.txtRobotoRomanBold20.copyWith(
              color: ColorConstant.whiteA700,
            ),
          ),
        ),
      ),
    );
  }
}
