import 'package:flutter/material.dart';
import 'package:hive_payments/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get gradientBlack900Gray900bc => BoxDecoration(
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
      );
  static BoxDecoration get outlineBlack9004c => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.04,
            0.11,
          ),
          end: Alignment(
            0.75,
            1.17,
          ),
          colors: [
            ColorConstant.gray900,
            ColorConstant.gray90001,
            ColorConstant.black90002,
          ],
        ),
      );
  static BoxDecoration get outlineBlack9004c1 => BoxDecoration(
        color: ColorConstant.gray900,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9004c,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              1,
            ),
          ),
        ],
      );
  static BoxDecoration get txtFillRedA400 => BoxDecoration(
        color: ColorConstant.redA400,
      );
  static BoxDecoration get txtOutlineBluegray900 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.blueGray900,
          width: getHorizontalSize(
            2.00,
          ),
        ),
      );
  static BoxDecoration get fillBlack900 => BoxDecoration(
        color: ColorConstant.black900,
      );
  static BoxDecoration get txtOutlineRedA400 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.redA400,
          width: getHorizontalSize(
            2.00,
          ),
        ),
      );
  static BoxDecoration get fillBluegray90001 => BoxDecoration(
        color: ColorConstant.blueGray90001,
      );
  static BoxDecoration get gradientBlack900Black90001 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0,
            0,
          ),
          end: Alignment(
            1,
            1,
          ),
          colors: [
            ColorConstant.black900,
            ColorConstant.black90001,
          ],
        ),
      );
  static BoxDecoration get txtOutlineBlack9004c => BoxDecoration(
        color: ColorConstant.black90003,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9004c,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              1,
            ),
          ),
        ],
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get fillGray90003 => BoxDecoration(
        color: ColorConstant.gray90003,
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder16 = BorderRadius.circular(
    getHorizontalSize(
      16.00,
    ),
  );

  static BorderRadius roundedBorder8 = BorderRadius.circular(
    getHorizontalSize(
      8.00,
    ),
  );

  static BorderRadius txtCircleBorder16 = BorderRadius.circular(
    getHorizontalSize(
      16.00,
    ),
  );

  static BorderRadius roundedBorder36 = BorderRadius.circular(
    getHorizontalSize(
      36.00,
    ),
  );

  static BorderRadius circleBorder24 = BorderRadius.circular(
    getHorizontalSize(
      24.00,
    ),
  );

  static BorderRadius roundedBorder12 = BorderRadius.circular(
    getHorizontalSize(
      12.00,
    ),
  );

  static BorderRadius customBorderTL12 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        12.00,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        12.00,
      ),
    ),
  );

  static BorderRadius circleBorder20 = BorderRadius.circular(
    getHorizontalSize(
      20.00,
    ),
  );

  static BorderRadius txtRoundedBorder12 = BorderRadius.circular(
    getHorizontalSize(
      12.00,
    ),
  );
}
