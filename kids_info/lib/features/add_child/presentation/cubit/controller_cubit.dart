
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'controller_state.dart';
part 'controller_cubit.freezed.dart';

/// A [Cubit] that manages the state of a controller.
class ControllerCubit extends Cubit<ControllerState> {
  /// Creates a [ControllerCubit] with an initial state.
  ControllerCubit()
      : super(
          ControllerState(currentText: ''),
        );

  /// Updates the current text of the controller in the state.
  ///
  /// The [value] parameter is the new text of the controller.
  Future<void> updateControllerText(String value) async {
    emit(
      ControllerState(currentText: value),
    );
  }
}