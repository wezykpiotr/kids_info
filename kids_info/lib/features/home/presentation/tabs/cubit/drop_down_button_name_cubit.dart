import 'package:flutter_bloc/flutter_bloc.dart';

part 'drop_down_button_name_state.dart';

class DropDownButtonNameCubit extends Cubit<DropDownButtonNameState> {
  DropDownButtonNameCubit() : super(DropDownButtonNameState('', 0));

  void getCurrentNameAndIndex(String value, int index) {
    state.currentName = value;
    state.index = index;
    emit(DropDownButtonNameState(
        state.currentName, state.index));
  }
}
