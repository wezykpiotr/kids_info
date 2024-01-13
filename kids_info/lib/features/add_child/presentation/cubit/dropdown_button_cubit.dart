
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dropdown_button_state.dart';
part 'dropdown_button_cubit.freezed.dart';

/// A [Cubit] that manages the state of a dropdown button.
class DropdownButtonCubit extends Cubit<DropdownButtonState> {
  /// Creates a [DropdownButtonCubit] with an initial state.
  DropdownButtonCubit()
      : super(const DropdownButtonState(
            currentValue: 'male', sex: ['male', 'female']));

  /// Updates the current value of the dropdown button in the state.
  ///
  /// The [value] parameter is the new value of the dropdown button.
  Future<void> updateDropdownValue(String value) async {
    emit(
      DropdownButtonState(currentValue: value),
    );
  }
}