import 'package:flutter/material.dart';
import 'package:store_app/config/icons/icons_broken.dart';
import 'package:store_app/core/utils/app_colors.dart';
import 'package:store_app/core/utils/app_styles.dart';
import 'package:store_app/feature/account/presentation/cubits/register_cubit/register_cubit.dart';
import 'package:store_app/feature/account/presentation/views/widgets/text_field_auth.dart';

class RegisterTextsFieldsSection extends StatelessWidget {
  const RegisterTextsFieldsSection({
    Key? key,
    required this.emailController,
    required this.fullNameController,
    required this.passwordController,
    required this.phoneController,
  }) : super(key: key);

  final TextEditingController emailController;

  final TextEditingController fullNameController;

  final TextEditingController passwordController;

  final TextEditingController phoneController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFieldAuth(
          title: Text(
            'Full Name',
            style: AppStyles.textStyle16,
          ),
          hintText: 'Enter your name',
          textInputType: TextInputType.text,
          passwordController: fullNameController,
          validator: (value) {
            if(value!.isEmpty){
              return 'Please enter your Full Name';
            }
            return null;
          },
        ),
        TextFieldAuth(
          title: Text(
            'Email',
            style: AppStyles.textStyle16,
          ),
          hintText: 'Enter your email',
          textInputType: TextInputType.emailAddress,
          passwordController: emailController,
          validator: (value) {
            if(value!.isEmpty){
              return 'Please enter your email';
            }
            return null;
          },
        ),
        TextFieldAuth(
          title: Text(
            'Phone',
            style: AppStyles.textStyle16,
          ),
          hintText: 'Enter your phone',
          textInputType: TextInputType.phone,
          maxLength: 11,
          passwordController: phoneController,
          validator: (value) {
            if(value!.isEmpty){
              return 'Please enter your phone';
            }
            return null;
          },
        ),
        TextFieldAuth(
          title: Text(
            'Password',
            style: AppStyles.textStyle16,
          ),
          obscureText: RegisterCubit.get(context).isShowPassword,
          hintText: 'Enter your password',
          passwordController: passwordController,
          textInputType: TextInputType.text,
          suffixIcon: InkWell(
            onTap: () {
              RegisterCubit.get(context).changePasswordVisibility();
            },
            child: Icon(
              RegisterCubit.get(context).isShowPassword
                  ? IconBroken.Hide
                  : IconBroken.Show,
              color: AppColors.grey,
            ),
          ),
          validator: (value) {
            if(value!.length<8){
              return 'Password is too short';
            }
            return null;
          },
        ),
      ],
    );
  }
}