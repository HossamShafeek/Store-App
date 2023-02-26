import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/utils/app_colors.dart';
import 'package:store_app/core/utils/app_constants.dart';
import 'package:store_app/core/utils/app_styles.dart';

class TextFieldAuth extends StatelessWidget {
   const TextFieldAuth({
    Key? key,
    required this.passwordController,
    required this.validator,
    required this.title,
    this.suffixIcon,
    required this.hintText,
    this.maxLength,
    this.textInputType,
    this.obscureText=false,
  }) : super(key: key);
  final TextEditingController passwordController;
  final String? Function(String?)? validator;
  final Widget title;
  final Widget? suffixIcon;
  final String hintText;
  final int? maxLength;
  final TextInputType? textInputType;
   final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title,
        Padding(
          padding: EdgeInsets.only(
            top: AppConstants.defaultPadding,
            bottom: 15.h,
          ),
          child: TextFormField(
            controller: passwordController,
            cursorColor: AppColors.deepOrange,
            keyboardType: textInputType,
            maxLength: maxLength,
            obscureText: obscureText,
            validator: validator,
            decoration: InputDecoration(
              hintText: hintText,
              suffixIcon: suffixIcon,
              filled: true,
              isDense: true,
              hintStyle: AppStyles.textStyle14.copyWith(
                color: AppColors.grey,
                fontWeight: FontWeight.normal,
              ),
              fillColor: AppColors.grey50,
              border: AppConstants.enabledBorder,
              focusedBorder: AppConstants.focusedBorder,
            ),
          ),
        ),
      ],
    );
  }
}
