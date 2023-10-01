import 'package:flutter_bloc/flutter_bloc.dart';

part 'parameters_state.dart';

class ParametersCubit<T> extends Cubit<ParametersState> {
  ParametersCubit() : super(ParametersState());

  // Future<void> passValue(T value) async {
  //   state.currentValue = value;
  //   emit(ParametersState(state.currentValue));
  //   print(state.currentValue);
  // }
}
