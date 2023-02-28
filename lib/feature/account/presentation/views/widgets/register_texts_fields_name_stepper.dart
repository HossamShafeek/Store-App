import 'package:flutter/material.dart';
import 'package:store_app/core/utils/app_styles.dart';
import 'package:store_app/feature/account/presentation/cubits/register_cubit/register_cubit.dart';
import 'package:store_app/feature/account/presentation/views/widgets/text_field_auth.dart';

class RegisterTextsFieldsNameStepper extends StatelessWidget {
  const RegisterTextsFieldsNameStepper({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Form(
      key: RegisterCubit.get(context).formKeyForNameStepper,
      child: Column(
        children: [
          TextFieldAuth(
            title: Text(
              'Display Name',
              style: AppStyles.textStyle16,
            ),
            hintText: 'Enter your display name',
            textInputType: TextInputType.text,
            passwordController: RegisterCubit.get(context).displayNameController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your display Name';
              }
              return null;
            },
          ),
          TextFieldAuth(
            title: Text(
              'First Name',
              style: AppStyles.textStyle16,
            ),
            hintText: 'Enter your first name',
            textInputType: TextInputType.text,
            passwordController: RegisterCubit.get(context).firstNameController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your first Name';
              }
              return null;
            },
          ),
          TextFieldAuth(
            title: Text(
              'Second Name',
              style: AppStyles.textStyle16,
            ),
            hintText: 'Enter your Second name',
            textInputType: TextInputType.text,
            passwordController: RegisterCubit.get(context).secondNameController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your Second Name';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}