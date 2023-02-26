import 'package:flutter/material.dart';
import 'package:store_app/config/routes/app_routes.dart';
import 'package:store_app/core/utils/app_colors.dart';
import 'package:store_app/core/utils/app_styles.dart';

class ToRegisterView extends StatelessWidget {
  const ToRegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don\'t have an account?',
          style: AppStyles.textStyle14,
        ),
        TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            foregroundColor: AppColors.deepOrange,
          ),
          onPressed: (){
            Navigator.pushNamed(context, Routes.registerView);
          },
          child: Text(
            'Register',
            style: AppStyles.textStyle14.copyWith(
              color: AppColors.deepOrange,
            ),
          ),
        ),
      ],
    );
  }
}