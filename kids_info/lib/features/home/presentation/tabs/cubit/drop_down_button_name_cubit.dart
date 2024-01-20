import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'drop_down_button_name_state.dart';
part 'drop_down_button_name_cubit.freezed.dart';

/// A [Cubit] that manages the state of a dropdown button.
@injectable
class DropDownButtonNameCubit extends Cubit<DropDownButtonNameState> {
  /// Creates a [DropDownButtonNameCubit] with an initial state.
  DropDownButtonNameCubit()
      : super(DropDownButtonNameState(currentId: null, index: 0));

  /// Emits a new state with the given [value] and [index].
  Future<void> updateCurrentIdAndIndex(String? value, int index) async {
    emit(DropDownButtonNameState(currentId: value, index: index));
  }
}
