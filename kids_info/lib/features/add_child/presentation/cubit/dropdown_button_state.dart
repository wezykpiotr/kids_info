
part of 'dropdown_button_cubit.dart';

@freezed
class DropdownButtonState with _$DropdownButtonState {
  const factory DropdownButtonState({
    @Default('male') String currentValue,
    @Default(['male', 'female']) List<String> sex,
  }) = _DropdownButtonState;
}
