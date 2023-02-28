import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/utils/app_colors.dart';
import 'package:store_app/core/utils/app_styles.dart';

class StepperItem extends StatelessWidget {
  const StepperItem({
    Key? key,
    required this.borderColor,
    required this.dotColor,
    required this.dotBorderColor,
    required this.textColor,
    required this.title,
    this.leftDivider,
    this.rightDivider,
  }) : super(key: key);
  final String title;
  final Color borderColor;
  final Color dotColor;
  final Color dotBorderColor;
  final Color textColor;
  final Widget? leftDivider;
  final Widget? rightDivider;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Row(
            children: [
              leftDivider!,
              CircleAvatar(
                radius: 14.w,
                backgroundColor: borderColor,
                child: CircleAvatar(
                  radius: 13.w,
                  backgroundColor: AppColors.white,
                  child: CircleAvatar(
                    backgroundColor: dotBorderColor,
                    radius: 9.w,
                    child: CircleAvatar(
                      radius: 8.w,
                      backgroundColor: dotColor,
                    ),
                  ),
                ),
              ),
              rightDivider!,
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: AppStyles.textStyle16.copyWith(
              color: textColor,
            ),
          )
        ],
      ),
    );
  }
}