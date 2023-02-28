import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store_app/core/utils/app_colors.dart';
import 'package:store_app/core/utils/app_constants.dart';

ThemeData appTheme() {
  return ThemeData(
    textTheme: GoogleFonts.montserratTextTheme(),
    scaffoldBackgroundColor: AppColors.white,
    primaryColor: AppColors.deepOrange,
    appBarTheme:  const AppBarTheme(
      elevation: 0.6,
      backgroundColor: AppColors.white,
      systemOverlayStyle: AppConstants.systemUiOverlayStyle,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: AppColors.deepOrange,
      unselectedItemColor: AppColors.grey,
      backgroundColor: AppColors.white,
      type: BottomNavigationBarType.fixed,
    ),
  );
}
