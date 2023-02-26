import 'package:flutter/material.dart';
import 'package:store_app/core/utils/app_colors.dart';
import 'package:store_app/core/utils/app_styles.dart';

class ToLoginView extends StatelessWidget {
  const ToLoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Already have an account?',
          style: AppStyles.textStyle14,
        ),
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: AppColors.deepOrange,
          ),
          onPressed: (){
            Navigator.pop(context);
          },
          child: Text(
            'Login',
            style: AppStyles.textStyle14.copyWith(
              color: AppColors.deepOrange,
            ),
          ),
        ),
      ],
    );
  }
}