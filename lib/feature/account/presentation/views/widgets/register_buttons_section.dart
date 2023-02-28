import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/config/routes/app_routes.dart';
import 'package:store_app/core/utils/app_colors.dart';
import 'package:store_app/core/utils/app_constants.dart';
import 'package:store_app/core/utils/app_styles.dart';
import 'package:store_app/core/widgets/gradient_button.dart';
import 'package:store_app/feature/account/presentation/cubits/register_cubit/register_cubit.dart';
import 'package:store_app/feature/account/presentation/cubits/register_cubit/register_state.dart';

class RegisterButtonsSection extends StatelessWidget {
  const RegisterButtonsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.only(
            left: AppConstants.defaultPadding,
            right: AppConstants.defaultPadding,
            top: AppConstants.defaultPadding,
            bottom: 3.h,
          ),
          child: Row(
            children: [
              Expanded(
                child: GradientButton(
                  onPressed: () {
                    if (RegisterCubit.get(context).indexForStepper == 0) {
                      if (RegisterCubit.get(context)
                          .formKeyForNameStepper
                          .currentState!
                          .validate()) {
                        RegisterCubit.get(context).plusIndexForStepper();
                      }
                    } else if (RegisterCubit.get(context).indexForStepper ==
                        1) {
                      if (RegisterCubit.get(context)
                          .formKeyForEmailStepper
                          .currentState!
                          .validate()) {
                        RegisterCubit.get(context).plusIndexForStepper();
                      }
                    } else {
                      if (RegisterCubit.get(context)
                          .formKeyForAddressStepper
                          .currentState!
                          .validate()) {
                        Navigator.pushReplacementNamed(
                          context,
                          Routes.layout,
                        );
                      }
                    }
                  },
                  title: Text(
                    'Next',
                    style: AppStyles.textStyle16.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width:
                RegisterCubit.get(context).indexForStepper >= 1 ? 5.w : 0,
              ),
              RegisterCubit.get(context).indexForStepper >= 1
                  ? Expanded(
                child: GradientButton(
                  margin: 1.5.w,
                  radiusForSmallContainer: 7.w,
                  colorForSmallContainer: AppColors.white,
                  onPressed: () {
                    RegisterCubit.get(context).minusIndexForStepper();
                  },
                  title: Text(
                    'Back',
                    style: AppStyles.textStyle16,
                  ),
                ),
              )
                  : const SizedBox(),
            ],
          ),
        );
      },
    );
  }
}