import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kids_info/features/theme/cubit/theme_cubit.dart';
import 'package:mocktail/mocktail.dart';

class MockThemeCubit extends Mock implements ThemeState {}

void main() {
  late ThemeCubit sut;

  setUp(() => {
        sut = ThemeCubit(),
      });

      

    blocTest<ThemeCubit, ThemeState>(
      'emits theme update',
      build: () => sut,
      act: (cubit) => cubit.setTheme(),
      expect: () => [
        ThemeState(theme: ThemeData.dark()),
        // ThemeState(theme: ThemeData.light()),
      ],
    );
  }
