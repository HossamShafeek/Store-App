import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/feature/account/presentation/cubits/login_cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState>{
  LoginCubit():super(LoginInitialState());

 static LoginCubit get(context)=>BlocProvider.of(context);

  bool isShowPassword = true;

  void changePasswordVisibility (){
    isShowPassword= !isShowPassword;
    emit(LoginChangePasswordVisibility());
  }

}