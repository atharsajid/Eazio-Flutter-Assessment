import 'dart:ui';

class AppColors {
  static Color gray900 = fromHex('#101828');
  static Color gray700 = fromHex('#344054');
  static Color gray600 = fromHex('#475467');
  static Color gray400 = fromHex('#98A2B3');
  static Color gray300 = fromHex('#D0D5DD');
  static Color gray200 = fromHex('#EAECF0');
  static Color blue = fromHex('#1E5BD7');
  static Color lightBlue = fromHex('#2F87F4');
  static Color error700 = fromHex('#B42318');
  static Color error200 = fromHex('#FECDCA');
  static Color error50 = fromHex('#FEF3F2');
  static Color success700 = fromHex('#067647');
  static Color success200 = fromHex('#ABEFC6');
  static Color success50 = fromHex('#ECFDF3');
  static Color orange = fromHex('#E55511');
  static Color shadowColor = fromHex('#101828');
  static Color shadowGrayColor = fromHex('#262626');
  static Color white = fromHex('#FFFFFF');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
