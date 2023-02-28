import 'package:store_app/feature/account/data/models/user_model.dart';

abstract class RegisterState{}

class RegisterInitialState extends RegisterState{}

class RegisterLoadingState extends RegisterState{}

class RegisterSuccessState extends RegisterState{
  final UserModel userModel;

  RegisterSuccessState(this.userModel);
}

class RegisterFailureState extends RegisterState{
  final String error;

  RegisterFailureState(this.error);
}

class RegisterChangePasswordVisibility extends RegisterState{}

class RegisterPlusIndexForStepper extends RegisterState{}

class RegisterMinusIndexForStepper extends RegisterState{}