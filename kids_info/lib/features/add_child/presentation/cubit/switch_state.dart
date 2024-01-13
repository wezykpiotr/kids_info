part of 'switch_cubit.dart';

@freezed
class SwitchState with _$SwitchState {
  factory SwitchState({
    @Default(false) bool currentValue,
  }) = _SwitchState;
}
