import 'package:flutter_bloc/flutter_bloc.dart';

part 'switch_state.dart';

class SwitchCubit extends Cubit<SwitchState> {
  SwitchCubit() : super(SwitchState(currentValue: false));

  Future<void> getSwitchValue(bool value) async {
    state.currentValue = value;
    emit(SwitchState(currentValue: state.currentValue));
    print(state.currentValue);
  }
}
