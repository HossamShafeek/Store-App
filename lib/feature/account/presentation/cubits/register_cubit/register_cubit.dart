import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/feature/account/presentation/cubits/register_cubit/register_state.dart';

class RegisterCubit extends Cubit<RegisterState>{
  RegisterCubit():super(RegisterInitialState());

 static RegisterCubit get(context)=>BlocProvider.of(context);

  bool isShowPassword = true;

  void changePasswordVisibility (){
    isShowPassword= !isShowPassword;
    emit(RegisterChangePasswordVisibility());
  }

}