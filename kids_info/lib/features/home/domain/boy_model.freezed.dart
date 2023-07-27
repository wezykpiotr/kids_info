// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'boy_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BoyModel _$BoyModelFromJson(Map<String, dynamic> json) {
  return _BoyModel.fromJson(json);
}

/// @nodoc
mixin _$BoyModel {
  int get id => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BoyModelCopyWith<BoyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoyModelCopyWith<$Res> {
  factory $BoyModelCopyWith(BoyModel value, $Res Function(BoyModel) then) =
      _$BoyModelCopyWithImpl<$Res, BoyModel>;
  @useResult
  $Res call({int id, int weight, int age, String name});
}

/// @nodoc
class _$BoyModelCopyWithImpl<$Res, $Val extends BoyModel>
    implements $BoyModelCopyWith<$Res> {
  _$BoyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? weight = null,
    Object? age = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BoyModelCopyWith<$Res> implements $BoyModelCopyWith<$Res> {
  factory _$$_BoyModelCopyWith(
          _$_BoyModel value, $Res Function(_$_BoyModel) then) =
      __$$_BoyModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int weight, int age, String name});
}

/// @nodoc
class __$$_BoyModelCopyWithImpl<$Res>
    extends _$BoyModelCopyWithImpl<$Res, _$_BoyModel>
    implements _$$_BoyModelCopyWith<$Res> {
  __$$_BoyModelCopyWithImpl(
      _$_BoyModel _value, $Res Function(_$_BoyModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? weight = null,
    Object? age = null,
    Object? name = null,
  }) {
    return _then(_$_BoyModel(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BoyModel implements _BoyModel {
  _$_BoyModel(this.id, this.weight, this.age, this.name);

  factory _$_BoyModel.fromJson(Map<String, dynamic> json) =>
      _$$_BoyModelFromJson(json);

  @override
  final int id;
  @override
  final int weight;
  @override
  final int age;
  @override
  final String name;

  @override
  String toString() {
    return 'BoyModel(id: $id, weight: $weight, age: $age, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BoyModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, weight, age, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BoyModelCopyWith<_$_BoyModel> get copyWith =>
      __$$_BoyModelCopyWithImpl<_$_BoyModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BoyModelToJson(
      this,
    );
  }
}

abstract class _BoyModel implements BoyModel {
  factory _BoyModel(
          final int id, final int weight, final int age, final String name) =
      _$_BoyModel;

  factory _BoyModel.fromJson(Map<String, dynamic> json) = _$_BoyModel.fromJson;

  @override
  int get id;
  @override
  int get weight;
  @override
  int get age;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_BoyModelCopyWith<_$_BoyModel> get copyWith =>
      throw _privateConstructorUsedError;
}
