
import 'dart:ui';

class Strings {
  static const String primaryColor = '#880e4f';
  static const String secondaryColor = '#560027';
  static const String lightColor = '#bc477b';
  static double textSize = 20.0;
  static const String fontFam = 'Hind';

  static Color hexToColor(String code) {
    return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
}