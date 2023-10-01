import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_state.dart';

class TestCubit extends Cubit<TestState> {
  TestCubit()
      : super(TestState(
          currentValueKg: 0,
        ));

  Future<void> getControllerValue(int valueKg) async {
    state.currentValueKg = valueKg;
    emit(TestState(currentValueKg: state.currentValueKg));
    // return valueKg.toString();
  }
}
