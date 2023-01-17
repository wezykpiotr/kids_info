import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeState(theme: ThemeData.light()));

  void setTheme() {
    if (state.theme == ThemeData.light()) {
      final updateState = ThemeState(theme: ThemeData.dark());
      emit(updateState);
    } else {
      final updateState = ThemeState(theme: ThemeData.light());
      emit(updateState);
    }
  }
}
