import 'package:flutter_bloc/flutter_bloc.dart';

part 'controller_state.dart';

class ControllerCubit extends Cubit<ControllerState> {
  ControllerCubit()
      : super(
          ControllerState(currentText: ''),
        );

  Future<void> getControllerText(String value) async {
    state.currentText = value;
    emit(ControllerState(currentText: state.currentText));
  }


  
}
