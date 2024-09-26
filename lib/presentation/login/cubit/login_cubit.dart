import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quizzy/utils/app_logger.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginState.initial());

  onClickedLogin({required String email, required String password}) {
    emit(state.copyWith(email: '', password: ''));
    AppLogger.debuglog(email);
    AppLogger.debuglog(password);
    if (email.isNotEmpty && password.isNotEmpty) {
      emit(state.copyWith(email: email, password: password));
    }else{
      emit(state.copyWith(email: '', password: ''));
    }
  }
}
