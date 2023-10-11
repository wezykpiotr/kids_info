import 'package:flutter_bloc/flutter_bloc.dart';

part 'dropdown_button_state.dart';

class DropdownButtonCubit extends Cubit<DropdownButtonState> {
  DropdownButtonCubit()
      : super(
            DropdownButtonState(currentValue: 'male', sex: ['male', 'female']));

  Future<void> passValue(String value) async {
    state.currentValue = value;
    emit(DropdownButtonState(currentValue: state.currentValue, sex: state.sex));
    print(state.currentValue);
  }

  Future<void> checkController() async{
    
  }
}
