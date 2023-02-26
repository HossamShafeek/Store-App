import 'package:flutter/material.dart';
import 'package:store_app/core/utils/app_colors.dart';

class LoadingIndicatorWidget extends StatelessWidget {
  final double strokeWidth;
  final Color color;

  const LoadingIndicatorWidget({
    Key? key,
    this.strokeWidth = 4.0,
    this.color = AppColors.deepOrange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: color,
        strokeWidth: strokeWidth,
      ),
    );
  }
}
