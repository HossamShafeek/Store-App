import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:store_app/core/utils/app_colors.dart';

class ShimmerContainerEffect extends StatelessWidget {
  const ShimmerContainerEffect({
    Key? key,
    this.width,
    this.height,
    this.borderRadius,
    this.baseColor,
    this.highlightColor,
  }) : super(key: key);

  final double? width;
  final double? height;
  final double? borderRadius;
  final Color? baseColor;
  final Color? highlightColor;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: baseColor ?? AppColors.grey.withOpacity(0.3),
      highlightColor: highlightColor ?? AppColors.white.withOpacity(0.6),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.9),
          borderRadius: BorderRadius.circular(borderRadius ?? 8.0),
        ),
      ),
    );
  }
}
