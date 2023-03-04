import 'package:flutter/material.dart';

class ColorsManager {
  static Color brandColor = HexColor.fromHex('#92A3FD');
  static Color secondaryColor = HexColor.fromHex('#92A3FD');
  static Color blackColor = HexColor.fromHex('1D1617');
  static Color darkGrey = HexColor.fromHex('#7B6F72');
  static Color lightGrey = HexColor.fromHex('#DDDADA');
  static Color borderColor = HexColor.fromHex('F7F8F8');
  static Color whiteColor = HexColor.fromHex('#FFFFFF');
  static Color linearColor = HexColor.fromHex('92A3FD');
  static Color startLinearColor = HexColor.fromHex('9DCEFF');
  static Color endLinearColor = HexColor.fromHex('92A3FD');
  static Color smallTextColor = HexColor.fromHex('7B6F72');
  static Color loginForgetColor = HexColor.fromHex('ADA4A5');
}

extension HexColor on Color {
  static Color fromHex(String hexColor) {
    hexColor = hexColor.replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF$hexColor';
    }
    return Color(
      int.parse(hexColor, radix: 16),
    );
  }
}
