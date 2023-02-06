import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color whiteA7007f = fromHex('#7fffffff');

  static Color red900 = fromHex('#aa2e2e');

  static Color black90001 = fromHex('#1d0000');

  static Color greenA700 = fromHex('#04ae52');

  static Color black90044 = fromHex('#44000000');

  static Color black900 = fromHex('#000000');

  static Color gray50001 = fromHex('#959595');

  static Color redA400 = fromHex('#e31337');

  static Color blueGray800 = fromHex('#404a50');

  static Color blueGray90001 = fromHex('#263238');

  static Color blueGray900 = fromHex('#2e2e2e');

  static Color black90003 = fromHex('#0a0a0a');

  static Color black90002 = fromHex('#260107');

  static Color gray70099 = fromHex('#99666666');

  static Color black9004c = fromHex('#4c000000');

  static Color gray90002 = fromHex('#440a0a');

  static Color gray700 = fromHex('#666666');

  static Color gray90003 = fromHex('#161616');

  static Color gray400 = fromHex('#b9bdbf');

  static Color gray500 = fromHex('#979797');

  static Color gray900 = fromHex('#1e1e1e');

  static Color gray90001 = fromHex('#22181a');

  static Color gray900Bc = fromHex('#bc2e0c0c');

  static Color orange700 = fromHex('#ff7a00');

  static Color bluegray400 = fromHex('#888888');

  static Color whiteA700 = fromHex('#ffffff');

  static Color orange70066 = fromHex('#66ff7a00');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
