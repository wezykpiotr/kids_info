// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analytics_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AnalyticsModel _$AnalyticsModelFromJson(Map<String, dynamic> json) {
  return _AnalyticsModel.fromJson(json);
}

/// @nodoc
mixin _$AnalyticsModel {
  String get id => throw _privateConstructorUsedError;
  num get age => throw _privateConstructorUsedError;
  num get height => throw _privateConstructorUsedError;
  String get weight => throw _privateConstructorUsedError;
  num get headSize => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnalyticsModelCopyWith<AnalyticsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalyticsModelCopyWith<$Res> {
  factory $AnalyticsModelCopyWith(
          AnalyticsModel value, $Res Function(AnalyticsModel) then) =
      _$AnalyticsModelCopyWithImpl<$Res, AnalyticsModel>;
  @useResult
  $Res call({String id, num age, num height, String weight, num headSize});
}

/// @nodoc
class _$AnalyticsModelCopyWithImpl<$Res, $Val extends AnalyticsModel>
    implements $AnalyticsModelCopyWith<$Res> {
  _$AnalyticsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? age = null,
    Object? height = null,
    Object? weight = null,
    Object? headSize = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as num,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as num,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String,
      headSize: null == headSize
          ? _value.headSize
          : headSize // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnalyticsModelCopyWith<$Res>
    implements $AnalyticsModelCopyWith<$Res> {
  factory _$$_AnalyticsModelCopyWith(
          _$_AnalyticsModel value, $Res Function(_$_AnalyticsModel) then) =
      __$$_AnalyticsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, num age, num height, String weight, num headSize});
}

/// @nodoc
class __$$_AnalyticsModelCopyWithImpl<$Res>
    extends _$AnalyticsModelCopyWithImpl<$Res, _$_AnalyticsModel>
    implements _$$_AnalyticsModelCopyWith<$Res> {
  __$$_AnalyticsModelCopyWithImpl(
      _$_AnalyticsModel _value, $Res Function(_$_AnalyticsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? age = null,
    Object? height = null,
    Object? weight = null,
    Object? headSize = null,
  }) {
    return _then(_$_AnalyticsModel(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as num,
      null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as num,
      null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String,
      null == headSize
          ? _value.headSize
          : headSize // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AnalyticsModel implements _AnalyticsModel {
  _$_AnalyticsModel(this.id, this.age, this.height, this.weight, this.headSize);

  factory _$_AnalyticsModel.fromJson(Map<String, dynamic> json) =>
      _$$_AnalyticsModelFromJson(json);

  @override
  final String id;
  @override
  final num age;
  @override
  final num height;
  @override
  final String weight;
  @override
  final num headSize;

  @override
  String toString() {
    return 'AnalyticsModel(id: $id, age: $age, height: $height, weight: $weight, headSize: $headSize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnalyticsModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.headSize, headSize) ||
                other.headSize == headSize));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, age, height, weight, headSize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnalyticsModelCopyWith<_$_AnalyticsModel> get copyWith =>
      __$$_AnalyticsModelCopyWithImpl<_$_AnalyticsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnalyticsModelToJson(
      this,
    );
  }
}

abstract class _AnalyticsModel implements AnalyticsModel {
  factory _AnalyticsModel(final String id, final num age, final num height,
      final String weight, final num headSize) = _$_AnalyticsModel;

  factory _AnalyticsModel.fromJson(Map<String, dynamic> json) =
      _$_AnalyticsModel.fromJson;

  @override
  String get id;
  @override
  num get age;
  @override
  num get height;
  @override
  String get weight;
  @override
  num get headSize;
  @override
  @JsonKey(ignore: true)
  _$$_AnalyticsModelCopyWith<_$_AnalyticsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
