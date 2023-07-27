part of 'analytics_cubit.dart';

@freezed
class AnalyticsState with _$AnalyticsState {
  factory AnalyticsState({
    @Default([]) List<AnalyticsModel> items,
    @Default(Status.initial) Status status,
    String? errorMessage,
  }) = _AnalyticsState;
}
