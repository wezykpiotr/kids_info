part of 'chart_cubit.dart';

class ChartState {
  ChartState({
    this.result = const [],
    this.status = Status.initial,
    this.errorMessage,
  });

  final List<ChartModel> result;
  final Status status;
  final String? errorMessage;
}

