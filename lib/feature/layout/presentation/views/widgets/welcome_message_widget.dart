import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/utils/app_colors.dart';
import 'package:store_app/core/utils/app_styles.dart';

class WelcomeMessagesWidget extends StatelessWidget {
  const WelcomeMessagesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hi, Mohamed!',
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: AppStyles.textStyle18,
        ),
        SizedBox(
          height: 5.h,
        ),
        Text(
          'Enjoy Your Shopping',
          style: AppStyles.textStyle20.copyWith(color: AppColors.deepOrange),
        ),
      ],
    );
  }
}