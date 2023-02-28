import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/feature/account/presentation/cubits/register_cubit/register_state.dart';
import 'package:store_app/feature/account/presentation/views/widgets/register_texts_fields_address_stepper.dart';
import 'package:store_app/feature/account/presentation/views/widgets/register_texts_fields_email_stepper.dart';
import 'package:store_app/feature/account/presentation/views/widgets/register_texts_fields_name_stepper.dart';

class RegisterCubit extends Cubit<RegisterState>{
  RegisterCubit():super(RegisterInitialState());

 static RegisterCubit get(context)=>BlocProvider.of(context);

  bool isShowPassword = true;

  var formKeyForNameStepper = GlobalKey<FormState>();
  var formKeyForEmailStepper = GlobalKey<FormState>();
  var formKeyForAddressStepper = GlobalKey<FormState>();


  final TextEditingController emailController = TextEditingController();
  final TextEditingController displayNameController = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController secondNameController = TextEditingController();
  final TextEditingController countryNameController = TextEditingController();
  final TextEditingController cityNameController = TextEditingController();
  final TextEditingController streetNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  List<Widget> textsFieldsStepperList=const [
    RegisterTextsFieldsNameStepper(),
    RegisterTextsFieldsEmailStepper(),
    RegisterTextsFieldsAddressStepper(),
  ];

  void changePasswordVisibility (){
    isShowPassword= !isShowPassword;
    emit(RegisterChangePasswordVisibility());
  }

  int indexForStepper=0;
  void plusIndexForStepper(){
    if(indexForStepper<2){
      indexForStepper++;
    }
    emit(RegisterPlusIndexForStepper());
  }
  void minusIndexForStepper(){
      indexForStepper--;
    emit(RegisterMinusIndexForStepper());
  }

}