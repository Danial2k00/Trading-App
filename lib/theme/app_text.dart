import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppText {
  const AppText._();

  static const String fontFamily = 'Inter';

  static TextTheme theme = const TextTheme(
    displaySmall: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      height: 1.1,
      color: AppColors.textPrimary,
    ),
    titleLarge: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      height: 1.2,
      color: AppColors.textPrimary,
    ),
    titleMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      height: 1.2,
      color: AppColors.textPrimary,
    ),
    bodyLarge: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      height: 1.3,
      color: AppColors.textPrimary,
    ),
    bodyMedium: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      height: 1.3,
      color: AppColors.textSecondary,
    ),
    bodySmall: TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w500,
      height: 1.3,
      color: AppColors.textMuted,
    ),
  );

  static TextStyle tabular({
    double fontSize = 14,
    FontWeight fontWeight = FontWeight.w600,
    Color color = AppColors.textPrimary,
  }) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      fontFeatures: const [FontFeature.tabularFigures()],
    );
  }
}
