// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChartModel _$$_ChartModelFromJson(Map<String, dynamic> json) =>
    _$_ChartModel(
      json['month'] as int,
      (json['p3'] as num).toDouble(),
      (json['p5'] as num).toDouble(),
      (json['p10'] as num).toDouble(),
      (json['p15'] as num).toDouble(),
      (json['p25'] as num).toDouble(),
      (json['p50'] as num).toDouble(),
      (json['p75'] as num).toDouble(),
      (json['p85'] as num).toDouble(),
      (json['p90'] as num).toDouble(),
      (json['p95'] as num).toDouble(),
      (json['p97'] as num).toDouble(),
    );

Map<String, dynamic> _$$_ChartModelToJson(_$_ChartModel instance) =>
    <String, dynamic>{
      'month': instance.month,
      'p3': instance.p3,
      'p5': instance.p5,
      'p10': instance.p10,
      'p15': instance.p15,
      'p25': instance.p25,
      'p50': instance.p50,
      'p75': instance.p75,
      'p85': instance.p85,
      'p90': instance.p90,
      'p95': instance.p95,
      'p97': instance.p97,
    };
