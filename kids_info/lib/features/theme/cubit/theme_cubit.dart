// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> implements Equatable {
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
  
  

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
