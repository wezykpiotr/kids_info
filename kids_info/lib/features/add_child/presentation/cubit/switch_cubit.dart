import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'switch_state.dart';
part 'switch_cubit.freezed.dart';


/// A [Cubit] that manages the state of a switch.
class SwitchCubit extends Cubit<SwitchState> {
  /// Creates a [SwitchCubit] with an initial state.
  SwitchCubit() : super(SwitchState(currentValue: false));

  /// Updates the current value of the switch in the state.
  ///
  /// The [value] parameter is the new value of the switch.
  Future<void> updateSwitchValue(bool value) async {
    emit(
      SwitchState(currentValue: value),
    );
  }
}
