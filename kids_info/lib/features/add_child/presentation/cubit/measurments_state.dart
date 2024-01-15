// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'measurments_cubit.dart';

@freezed
class MeasurmentsState with _$MeasurmentsState {
  factory MeasurmentsState({
   @Default(0) int currentValue1,
   @Default(0) int currentValue2,

  }) = _MeasurmentsState;
}
