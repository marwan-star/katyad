import 'package:flutter/material.dart';
import 'package:reminder_app/core/theme/app_colors.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    fontFamily: "NRT",
    scaffoldBackgroundColor: AppColors.lightWhite,

    appBarTheme: AppBarThemeData(backgroundColor: AppColors.lightWhite),
  );
}
