import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/utils/app_colors.dart';

class AppConstants {
  static const String path = 'assets/images';
  static final double defaultPadding = 12.h;

  static final OutlineInputBorder focusedBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.w),
    borderSide: BorderSide(
      width: 1.1.w,
      color: AppColors.deepOrange,
    ),
  );

  static final OutlineInputBorder enabledBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.w),
    borderSide: BorderSide.none,
  );

  static const SystemUiOverlayStyle systemUiOverlayStyle =
      SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: AppColors.transparent,
      );
}
