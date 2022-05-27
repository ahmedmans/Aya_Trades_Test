import 'font_manager.dart';
import 'package:flutter/widgets.dart';

TextStyle _getTextStyle(
    double fontSize, Color color, String fontFamily, FontWeight fontWeight) {
  return TextStyle(
    fontSize: fontSize,
    color: color,
    fontFamily: fontFamily,
    fontWeight: fontWeight,
  );
}

// Leto Style
TextStyle getRegularStyle(
    {required double fSize, required Color color, required String fontFamily}) {
  return _getTextStyle(
    fSize,
    color,
    fontFamily,
    CustomFontWeight.regular,
  );
}

TextStyle getMediumStyle(
    {double fSize = FontSize.fSize18, required Color color}) {
  return _getTextStyle(
    fSize,
    color,
    ConstantFonts.latoFont,
    CustomFontWeight.medium,
  );
}

TextStyle getBoldStyle(
    {double fSize = FontSize.fSize18, required Color color}) {
  return _getTextStyle(
    fSize,
    color,
    ConstantFonts.latoFont,
    CustomFontWeight.bold,
  );
}

// // Montserrat Style
// TextStyle getRegularMontserratStyle(
//     {double fSize = FontSize.fSize12, required Color color}) {
//   return _getTextStyle(
//     fSize,
//     color,
//     ConstantFonts.montserratFont,
//     CustomFontWeight.regular,
//   );
// }

// // Roboto Style
// TextStyle getRegularRobotoStyle(
//     {double fSize = FontSize.fSize15, required Color color}) {
//   return _getTextStyle(
//     fSize,
//     color,
//     ConstantFonts.latoFont,
//     CustomFontWeight.regular,
//   );
// }
