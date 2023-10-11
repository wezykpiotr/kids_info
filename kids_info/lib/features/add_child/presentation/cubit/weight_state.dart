// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'weight_cubit.dart';

@freezed
class WeightState with _$WeightState {
  // const WeightState._();
  factory WeightState({
   @Default(0) currentValueKg,
   @Default(0) currentValueGrams,
    // @Default([0, 1, 2, 3, 4, 5, 6, 7, 8, 9]) List<int> weightDataKg,
    // required this.currentValueGrams,
  }) = _WeightState;
  // String currentValueGrams;
}

// class WeightState {
//   WeightState({required this.currentValueKg, required this.currentValueGrams});
//    int currentValueKg;
//    int currentValueGrams;

  
// }
