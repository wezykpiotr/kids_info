// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'measurments_cubit.dart';

@freezed
class MeasurmentsState with _$MeasurmentsState {
  // const WeightState._();
  factory MeasurmentsState({
   @Default(0) currentValue1,
   @Default(0) currentValue2,
    // @Default([0, 1, 2, 3, 4, 5, 6, 7, 8, 9]) List<int> weightDataKg,
    // required this.currentValueGrams,
  }) = _MeasurmentsState;
  // String currentValueGrams;
}

// class WeightState {
//   WeightState({required this.currentValueKg, required this.currentValueGrams});
//    int currentValueKg;
//    int currentValueGrams;

  
// }
