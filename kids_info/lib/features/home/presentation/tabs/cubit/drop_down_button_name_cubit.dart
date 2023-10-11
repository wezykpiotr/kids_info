import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'drop_down_button_name_state.dart';

class DropDownButtonNameCubit extends Cubit<DropDownButtonNameState> {
  DropDownButtonNameCubit() : super(DropDownButtonNameState(null, 0));

  void getCurrentNameAndIndex(String value, int index) {
    state.currentId = value;
    state.index = index;
    emit(DropDownButtonNameState(state.currentId, state.index));
  }
}
