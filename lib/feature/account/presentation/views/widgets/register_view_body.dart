import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/utils/app_colors.dart';
import 'package:store_app/core/utils/app_constants.dart';
import 'package:store_app/core/utils/app_styles.dart';
import 'package:store_app/feature/account/presentation/cubits/register_cubit/register_cubit.dart';
import 'package:store_app/feature/account/presentation/cubits/register_cubit/register_state.dart';
import 'package:store_app/feature/account/presentation/views/widgets/gradient_button.dart';
import 'package:store_app/feature/account/presentation/views/widgets/register_texts_fields_section.dart';
import 'package:store_app/feature/account/presentation/views/widgets/to_login_view.dart';

class RegisterViewBody extends StatefulWidget {
  const RegisterViewBody({Key? key}) : super(key: key);

  @override
  State<RegisterViewBody> createState() => _RegisterViewBodyState();
}

class _RegisterViewBodyState extends State<RegisterViewBody> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  @override
  void deactivate() {
    fullNameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: AppConstants.systemUiOverlayStyle,
      child: BlocConsumer<RegisterCubit, RegisterState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Padding(
            padding: EdgeInsets.all(AppConstants.defaultPadding),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 40.h),
                    child: Text(
                      'REGISTER',
                      style: AppStyles.textStyle30,
                    ),
                  ),
                  RegisterTextsFieldsSection(
                    fullNameController: fullNameController,
                    emailController: emailController,
                    phoneController: phoneController,
                    passwordController: passwordController,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: AppConstants.defaultPadding,
                      bottom: 3.h,
                    ),
                    child: GradientButton(
                      onPressed: () {
                        if(formKey.currentState!.validate()){
                        }
                      },
                      title: Text(
                        'REGISTER',
                        style: AppStyles.textStyle16.copyWith(
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ),
                  const ToLoginView(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}


