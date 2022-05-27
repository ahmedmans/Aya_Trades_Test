import 'color_manager.dart';
import 'font_manager.dart';
import 'style_manager.dart';
import 'value_manager.dart';
import 'package:flutter/material.dart';

ThemeData getAppTheme() {
  return ThemeData(
    //DONE: Add Main Color

    primaryColor: ColorManager.kPrimaryColor,
    splashColor: ColorManager.kLightGreen,

    //DONE: Add Theme Button

    buttonTheme: const ButtonThemeData(
      shape: StadiumBorder(),
      disabledColor: ColorManager.lightGrey,
      buttonColor: ColorManager.kPrimaryColor,
      splashColor: ColorManager.kLightGreen,
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegularStyle(
          fSize: FontSize.fSize16,
          color: ColorManager.white,
          fontFamily: ConstantFonts.latoFont,
        ),
        primary: ColorManager.kPrimaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.size10),
        ),
      ),
    ),

    //DONE: Add InputTheme

    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(AppPadding.padding20),
      hintStyle: getRegularStyle(
        fSize: FontSize.fSize12,
        color: ColorManager.grey,
        fontFamily: ConstantFonts.montserratFont,
      ),
      labelStyle: getRegularStyle(
        fSize: FontSize.fSize12,
        color: ColorManager.grey,
        fontFamily: ConstantFonts.montserratFont,
      ),
      errorStyle: getRegularStyle(
        fSize: FontSize.fSize12,
        color: ColorManager.kError,
        fontFamily: ConstantFonts.montserratFont,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: Colors.transparent,
          width: AppSize.size1_5,
        ),
        borderRadius: BorderRadius.circular(AppSize.size8),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.grey,
          width: AppSize.size1_5,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(AppSize.size8),
        ),
      ),
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.kError,
          width: AppSize.size1_5,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(AppSize.size8),
        ),
      ),
      focusedErrorBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.kPrimaryColor,
          width: AppSize.size1_5,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(AppSize.size8),
        ),
      ),
    ),
  );
}
