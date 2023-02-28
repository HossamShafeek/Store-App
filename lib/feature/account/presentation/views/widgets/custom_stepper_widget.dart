import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/utils/app_colors.dart';
import 'package:store_app/core/widgets/custom_divider.dart';
import 'package:store_app/feature/account/presentation/views/widgets/stepper_item.dart';

class CustomStepperWidget extends StatelessWidget {
  const CustomStepperWidget({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 23.h),
      child: Row(
        children: [
          StepperItem(
            title: 'Name',
            borderColor: index <= 2 ? AppColors.deepOrange : AppColors.grey,
            dotBorderColor: index <= 2 ? AppColors.deepOrange : AppColors.grey,
            dotColor: index <= 2 ? AppColors.deepOrange : AppColors.white,
            textColor: index <= 2 ? AppColors.black : AppColors.grey,
            rightDivider: Expanded(
              child: CustomDivider(
                color: index >= 1 ? AppColors.deepOrange : AppColors.grey,
                width: double.infinity,
                height: 3,
              ),
            ),
            leftDivider: const Expanded(child: SizedBox()),
          ),
          StepperItem(
            title: 'Email',
            borderColor: index >= 1 ? AppColors.deepOrange : AppColors.grey,
            dotBorderColor: index >= 1 ? AppColors.deepOrange : AppColors.white,
            dotColor: index >= 1 ? AppColors.deepOrange : AppColors.white,
            textColor: index >= 1 ? AppColors.black : AppColors.grey,
            leftDivider: Expanded(
              child: CustomDivider(
                color: index >= 1 ? AppColors.deepOrange : AppColors.grey,
                width: double.infinity,
                height: 3,
              ),
            ),
            rightDivider: Expanded(
              child: CustomDivider(
                color: index == 2 ? AppColors.deepOrange : AppColors.grey,
                width: double.infinity,
                height: 3,
              ),
            ),
          ),
          StepperItem(
            title: 'Address',
            borderColor: index == 2 ? AppColors.deepOrange : AppColors.grey,
            dotBorderColor: index == 2 ? AppColors.deepOrange : AppColors.white,
            dotColor: index == 2 ? AppColors.deepOrange : AppColors.white,
            textColor: index == 2 ? AppColors.black : AppColors.grey,
            leftDivider: Expanded(
              child: CustomDivider(
                color: index == 2 ? AppColors.deepOrange : AppColors.grey,
                width: double.infinity,
                height: 3,
              ),
            ),
            rightDivider: const Expanded(
              child: SizedBox(),
            ),
          ),
        ],
      ),
    );
  }
}