part of 'home_cubit.dart';



class HomeState {
  HomeState({
    this.result = const [],
    this.status = Status.initial,
    this.errorMessage,
  });

  final List<ChartModel> result;
  final Status status;
  final String? errorMessage;
}

