import 'dart:ffi';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'weight_state.dart';
part 'weight_cubit.freezed.dart';

@lazySingleton
class WeightCubit extends Cubit<WeightState> {
  WeightCubit() : super(WeightState());

  // Future<void> getControllerValue(int valueKg) async {
  //   emit(WeightState(currentValueKg: valueKg));

  // }

  void getControllerValue(int valueKg, int valueGrams) {
    emit(
        state.copyWith(currentValueGrams: valueGrams, currentValueKg: valueKg));
    // state.currentValueKg = valueKg;
    // state.currentValueGrams = valueGrams;
    // var newValues =
    //     state.copyWith(currentValueGrams: valueGrams, currentValueKg: valueKg);
    // emit(newValues);
    // emit(
    //   state.copyWith(currentValueKg: valueKg, currentValueGrams: valueGrams),
    // );
    print(WeightState(currentValueGrams: valueGrams, currentValueKg: valueKg));

    // print(WeightState(currentValueKg: valueKg, currentValueGrams: valueGrams));
  }

  // String getControllerValue(int valueKg, int valueGrams) {
  //   state.currentValueKg = valueKg;
  //   state.currentValueGrams = valueGrams;
  //   try {
  //     emit(WeightState(currentValueKg: valueKg, currentValueGrams: valueGrams));
  //     print(valueKg);
  //   } catch (error) {
  //     emit(WeightState(currentValueKg: valueKg, currentValueGrams: valueGrams));
  //   }
  //   return '$valueKg, $valueGrams';
  // }
}
