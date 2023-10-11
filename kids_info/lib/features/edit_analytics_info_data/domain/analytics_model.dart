

import 'package:freezed_annotation/freezed_annotation.dart';

part 'analytics_model.g.dart';
part 'analytics_model.freezed.dart';

@freezed
class AnalyticsModel with _$AnalyticsModel {
  factory AnalyticsModel(
    String id,
    num age,
    num height,
    String weight,
    num headSize,
  ) = _AnalyticsModel;

  factory AnalyticsModel.fromJson(Map<String, dynamic> json) =>
      _$AnalyticsModelFromJson(json);
}
