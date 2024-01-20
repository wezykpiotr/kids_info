part of 'drop_down_button_name_cubit.dart';

/// Represents the state of a [DropDownButtonNameCubit].
@freezed
class DropDownButtonNameState with _$DropDownButtonNameState {
  /// Creates a [DropDownButtonNameState].
  ///
  /// The [currentId] represents the currently selected ID in the dropdown button.
  /// The [index] represents the index of the currently selected item in the dropdown button.
  factory DropDownButtonNameState({String? currentId, required int index}) =
      _DropDownButtonNameState;
}
