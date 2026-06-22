import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reminder_app/core/theme/app_colors.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    // general theme
    fontFamily: "NRT",
    scaffoldBackgroundColor: AppColors.lightWhite,

    // appbar theme
    appBarTheme: AppBarThemeData(backgroundColor: AppColors.lightWhite),

    //input decoration theme
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.lightWhite,
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      hintStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppColors.lightGrey,
      ),
      labelStyle: const TextStyle(
        color: AppColors.lightGrey,
        fontWeight: FontWeight.w500,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: BorderSide(color: AppColors.lightGrey),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: const BorderSide(color: AppColors.purple),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: const BorderSide(color: CupertinoColors.systemRed),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: const BorderSide(color: CupertinoColors.systemRed),
      ),
      floatingLabelStyle: const TextStyle(color: AppColors.purple),
      prefixIconColor: AppColors.darkGreen,
      suffixIconColor: AppColors.purple,
    ),

    // elevated button tehme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.purple,
        foregroundColor: AppColors.lightWhite,
        elevation: 0,
        minimumSize: const Size(double.infinity, 56),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        textStyle: const TextStyle(fontSize: 16, letterSpacing: 0.2),
      ),
    ),

    // chip theme
    chipTheme: ChipThemeData(
      backgroundColor: AppColors.lightWhite,
      selectedColor: AppColors.darkGreen,

      labelStyle: TextStyle(
        color: AppColors.black,
        fontSize: 13,
        fontWeight: FontWeight.w500,
      ),
      secondaryLabelStyle: TextStyle(
        color: AppColors.lightWhite,
        fontSize: 13,
        fontWeight: FontWeight.w500,
      ),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide.none,
      ),
      showCheckmark: true,
      checkmarkColor: AppColors.lightWhite,
      elevation: 0,
      pressElevation: 0,
    ),
  );
}
