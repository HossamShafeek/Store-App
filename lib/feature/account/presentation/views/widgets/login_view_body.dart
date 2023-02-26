import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/config/routes/app_routes.dart';
import 'package:store_app/core/utils/app_colors.dart';
import 'package:store_app/core/utils/app_constants.dart';
import 'package:store_app/core/utils/app_styles.dart';
import 'package:store_app/feature/account/presentation/cubits/login_cubit/login_cubit.dart';
import 'package:store_app/feature/account/presentation/cubits/login_cubit/login_state.dart';
import 'package:store_app/feature/account/presentation/views/widgets/gradient_button.dart';
import 'package:store_app/feature/account/presentation/views/widgets/login_texts_fields_section.dart';
import 'package:store_app/feature/account/presentation/views/widgets/to_register_view.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({Key? key}) : super(key: key);

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final  _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: AppConstants.systemUiOverlayStyle,
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Padding(
            padding: EdgeInsets.all(AppConstants.defaultPadding),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 40.h),
                    child: Text(
                      'LOGIN',
                      style: AppStyles.textStyle30,
                    ),
                  ),
                  LoginTextsFieldsSection(
                    emailController: emailController,
                    passwordController: passwordController,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: AppConstants.defaultPadding,
                      bottom: 3.h,
                    ),
                    child: GradientButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.pushReplacementNamed(context, Routes.layout);
                        }
                      },
                      title: Text(
                        'LOGIN',
                        style: AppStyles.textStyle16.copyWith(
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ),
                  const ToRegisterView(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
