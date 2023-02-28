import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/utils/app_colors.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({
    Key? key,
    required this.onPressed,
    required this.title,
    this.margin,
    this.colorForSmallContainer,
    this.radiusForSmallContainer,
    this.radiusForBigContainer,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final Widget title;
  final double? margin;
  final Color? colorForSmallContainer;
  final double? radiusForSmallContainer;
  final double? radiusForBigContainer;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      width: MediaQuery.of(context).size.width,
      height: 45.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radiusForBigContainer ?? 8.w),
          gradient: LinearGradient(
            colors: AppColors.orangeGradient,
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          )),
      child: Container(
        clipBehavior: Clip.antiAlias,
        margin: EdgeInsets.all(margin ?? 0),
        decoration: BoxDecoration(
          color: colorForSmallContainer ?? AppColors.transparent,
          borderRadius: BorderRadius.circular(radiusForSmallContainer??0),
        ),
        child: MaterialButton(
          onPressed: onPressed,
          child: title,
        ),
      ),
    );
  }
}
