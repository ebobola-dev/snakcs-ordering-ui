import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snacks_ordering/bloc/login/login_event.dart';
import 'package:snacks_ordering/bloc/login/login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(RegistrationLoginState()) {
    on<SetRegistrationLoginEvent>((event, emit) {
      if (state is AuthorizationLoginState) {
        emit(RegistrationLoginState());
      }
    });

    on<SetAuhtorizationLoginEvent>((event, emit) {
      if (state is RegistrationLoginState) {
        emit(AuthorizationLoginState());
      }
    });
  }
}
