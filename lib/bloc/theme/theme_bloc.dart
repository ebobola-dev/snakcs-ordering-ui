import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snacks_ordering/bloc/theme/theme_event.dart';
import 'package:snacks_ordering/bloc/theme/theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc({bool initIsDark = false})
      : super(initIsDark ? DarkThemeState() : LightThemeState()) {
    on<ToggleThemeEvent>((event, emit) {
      if (state is LightThemeState) {
        emit(DarkThemeState());
      } else {
        emit(LightThemeState());
      }
    });
  }
}
