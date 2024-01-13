import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'measurments_state.dart';
part 'measurments_cubit.freezed.dart';

/// A [Cubit] that manages the state of measurements.
@lazySingleton
class MeasurmentsCubit extends Cubit<MeasurmentsState> {
  /// Creates a [MeasurmentsCubit] with an initial state.
  MeasurmentsCubit() : super(MeasurmentsState());

  /// Updates the current values in the state.
  ///
  /// The [selectedValue1] and [selectedValue2] parameters are the new values to update to.
  void updateValues(int selectedValue1, int selectedValue2) {
    emit(
      state.copyWith(
          currentValue1: selectedValue1, currentValue2: selectedValue2),
    );
  }
}