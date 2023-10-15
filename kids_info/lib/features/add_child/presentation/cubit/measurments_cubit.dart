import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'measurments_state.dart';
part 'measurments_cubit.freezed.dart';

@lazySingleton
class MeasurmentsCubit extends Cubit<MeasurmentsState> {
  MeasurmentsCubit() : super(MeasurmentsState());

  // Future<void> getControllerValue(int valueKg) async {
  //   emit(WeightState(currentValueKg: valueKg));

  // }

  void getControllerValue(dynamic selectedValue1, dynamic selectedValue2) {
    emit(
      state.copyWith(
          currentValue1: selectedValue1, currentValue2: selectedValue2),
    );
    // state.currentValueKg = valueKg;
    // state.currentValueGrams = valueGrams;
    // var newValues =
    //     state.copyWith(currentValueGrams: valueGrams, currentValueKg: valueKg);
    // emit(newValues);
    // emit(
    //   state.copyWith(currentValueKg: valueKg, currentValueGrams: valueGrams),
    // );

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
