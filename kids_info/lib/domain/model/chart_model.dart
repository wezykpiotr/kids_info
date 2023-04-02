import 'package:freezed_annotation/freezed_annotation.dart';


part 'chart_model.freezed.dart';
part 'chart_model.g.dart';



@freezed
class ChartModel with _$ChartModel {
  factory ChartModel(
  int month,
  int p3,
  int p5,
  int p10,
  int p15,
  int p25,
  int p50,
  int p75,
  int p85,
  int p95,
  int p97,
  ) = _ChartModel;


  factory ChartModel.fromJson(Map<String, dynamic> json) => _$ChartModelFromJson(json);
}

