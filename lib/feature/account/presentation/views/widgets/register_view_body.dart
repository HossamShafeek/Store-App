import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/core/utils/app_constants.dart';
import 'package:store_app/core/utils/app_styles.dart';
import 'package:store_app/feature/account/presentation/cubits/register_cubit/register_cubit.dart';
import 'package:store_app/feature/account/presentation/cubits/register_cubit/register_state.dart';
import 'package:store_app/feature/account/presentation/views/widgets/custom_stepper_widget.dart';
import 'package:store_app/feature/account/presentation/views/widgets/register_buttons_section.dart';
import 'package:store_app/feature/account/presentation/views/widgets/to_login_view.dart';

class RegisterViewBody extends StatefulWidget {
  const RegisterViewBody({Key? key}) : super(key: key);

  @override
  State<RegisterViewBody> createState() => _RegisterViewBodyState();
}

class _RegisterViewBodyState extends State<RegisterViewBody> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: AppConstants.systemUiOverlayStyle,
      child: BlocConsumer<RegisterCubit, RegisterState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'REGISTER',
                style: AppStyles.textStyle30,
              ),
              CustomStepperWidget(
                index: RegisterCubit.get(context).indexForStepper,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppConstants.defaultPadding,
                ),
                child: RegisterCubit.get(context).textsFieldsStepperList[
                    RegisterCubit.get(context).indexForStepper],
              ),
              const RegisterButtonsSection(),
              const ToLoginView(),
            ],
          );
        },
      ),
    );
  }
}


