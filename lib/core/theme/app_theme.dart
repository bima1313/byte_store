import 'package:byte_store/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

@immutable
abstract class AppTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      brightness: .dark,
      primaryColor: AppColors.darkPrimary,
      scaffoldBackgroundColor: AppColors.darkBackground,
    );
  }
}
