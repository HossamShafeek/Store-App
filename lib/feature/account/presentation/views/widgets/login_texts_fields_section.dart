import 'package:flutter/material.dart';
import 'package:store_app/config/icons/icons_broken.dart';
import 'package:store_app/core/utils/app_colors.dart';
import 'package:store_app/core/utils/app_styles.dart';
import 'package:store_app/feature/account/presentation/cubits/login_cubit/login_cubit.dart';
import 'package:store_app/feature/account/presentation/views/widgets/text_field_auth.dart';

class LoginTextsFieldsSection extends StatelessWidget {
  const LoginTextsFieldsSection({
    Key? key,
    required this.emailController,
    required this.passwordController,
  }) : super(key: key);

  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
            'Password',
            style: AppStyles.textStyle16,
          ),
          obscureText: LoginCubit.get(context).isShowPassword,
          suffixIcon: InkWell(
            onTap: () {
              LoginCubit.get(context).changePasswordVisibility();
            },
            child:  Icon(
              LoginCubit.get(context).isShowPassword
                  ? IconBroken.Hide
                  : IconBroken.Show,
              color: AppColors.grey,
            ),
          ),
          hintText: 'Enter your password',
          textInputType: TextInputType.text,
          passwordController: passwordController,
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
