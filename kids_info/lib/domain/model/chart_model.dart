import 'package:freezed_annotation/freezed_annotation.dart';
part 'chart_model.freezed.dart';
part 'chart_model.g.dart';



@freezed
class ChartModel with _$ChartModel {
  factory ChartModel(
  int month,
  double p3,
  double p5,
  double p10,
  double p15,
  double p25,
  double p50,
  double p75,
  double p85,
  double p90,
  double p95,
  double p97,
  ) = _ChartModel;


  factory ChartModel.fromJson(Map<String, dynamic> json) => _$ChartModelFromJson(json);
}

