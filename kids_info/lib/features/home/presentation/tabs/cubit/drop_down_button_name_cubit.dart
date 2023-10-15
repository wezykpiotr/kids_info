import 'package:flutter_bloc/flutter_bloc.dart';

part 'drop_down_button_name_state.dart';

class DropDownButtonNameCubit extends Cubit<DropDownButtonNameState> {
  DropDownButtonNameCubit() : super(DropDownButtonNameState(null, 0));

  Future<void> getCurrentIdAndIndex(String? value, int index) async{
    state.currentId = value;
    state.index = index;
    emit(DropDownButtonNameState(state.currentId, state.index));
  }
}
