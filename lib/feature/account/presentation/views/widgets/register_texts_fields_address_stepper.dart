import 'package:flutter/material.dart';
import 'package:store_app/core/utils/app_styles.dart';
import 'package:store_app/feature/account/presentation/cubits/register_cubit/register_cubit.dart';
import 'package:store_app/feature/account/presentation/views/widgets/text_field_auth.dart';

class RegisterTextsFieldsAddressStepper extends StatelessWidget {
  const RegisterTextsFieldsAddressStepper({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Form(
      key: RegisterCubit.get(context).formKeyForAddressStepper,
      child: Column(
        children: [
          TextFieldAuth(
            title: Text(
              'Country',
              style: AppStyles.textStyle16,
            ),
            hintText: 'Enter your Country',
            textInputType: TextInputType.text,
            passwordController: RegisterCubit.get(context).countryNameController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your Country';
              }
              return null;
            },
          ),
          TextFieldAuth(
            title: Text(
              'City',
              style: AppStyles.textStyle16,
            ),
            hintText: 'Enter your City',
            textInputType: TextInputType.text,
            passwordController: RegisterCubit.get(context).cityNameController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your City';
              }
              return null;
            },
          ),
          TextFieldAuth(
            title: Text(
              'Street',
              style: AppStyles.textStyle16,
            ),
            hintText: 'Enter your Street',
            textInputType: TextInputType.text,
            passwordController: RegisterCubit.get(context).streetNameController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your Street';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}