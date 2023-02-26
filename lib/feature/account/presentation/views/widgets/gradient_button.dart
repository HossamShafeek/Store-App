import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/utils/app_colors.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({
    Key? key,
    required this.onPressed,
    required this.title,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      width: MediaQuery.of(context).size.width,
      height: 45.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.w),
          gradient: LinearGradient(
            colors: AppColors.orangeGradient,
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          )),
      child: MaterialButton(
        onPressed: onPressed,
        child: title,
      ),
    );
  }
}