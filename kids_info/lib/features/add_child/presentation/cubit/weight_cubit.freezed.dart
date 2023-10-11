// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weight_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeightState {
  dynamic get currentValueKg => throw _privateConstructorUsedError;
  dynamic get currentValueGrams => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeightStateCopyWith<WeightState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeightStateCopyWith<$Res> {
  factory $WeightStateCopyWith(
          WeightState value, $Res Function(WeightState) then) =
      _$WeightStateCopyWithImpl<$Res, WeightState>;
  @useResult
  $Res call({dynamic currentValueKg, dynamic currentValueGrams});
}

/// @nodoc
class _$WeightStateCopyWithImpl<$Res, $Val extends WeightState>
    implements $WeightStateCopyWith<$Res> {
  _$WeightStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentValueKg = freezed,
    Object? currentValueGrams = freezed,
  }) {
    return _then(_value.copyWith(
      currentValueKg: freezed == currentValueKg
          ? _value.currentValueKg
          : currentValueKg // ignore: cast_nullable_to_non_nullable
              as dynamic,
      currentValueGrams: freezed == currentValueGrams
          ? _value.currentValueGrams
          : currentValueGrams // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeightStateCopyWith<$Res>
    implements $WeightStateCopyWith<$Res> {
  factory _$$_WeightStateCopyWith(
          _$_WeightState value, $Res Function(_$_WeightState) then) =
      __$$_WeightStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic currentValueKg, dynamic currentValueGrams});
}

/// @nodoc
class __$$_WeightStateCopyWithImpl<$Res>
    extends _$WeightStateCopyWithImpl<$Res, _$_WeightState>
    implements _$$_WeightStateCopyWith<$Res> {
  __$$_WeightStateCopyWithImpl(
      _$_WeightState _value, $Res Function(_$_WeightState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentValueKg = freezed,
    Object? currentValueGrams = freezed,
  }) {
    return _then(_$_WeightState(
      currentValueKg:
          freezed == currentValueKg ? _value.currentValueKg! : currentValueKg,
      currentValueGrams: freezed == currentValueGrams
          ? _value.currentValueGrams!
          : currentValueGrams,
    ));
  }
}

/// @nodoc

class _$_WeightState implements _WeightState {
  _$_WeightState({this.currentValueKg = 0, this.currentValueGrams = 0});

  @override
  @JsonKey()
  final dynamic currentValueKg;
  @override
  @JsonKey()
  final dynamic currentValueGrams;

  @override
  String toString() {
    return 'WeightState(currentValueKg: $currentValueKg, currentValueGrams: $currentValueGrams)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeightState &&
            const DeepCollectionEquality()
                .equals(other.currentValueKg, currentValueKg) &&
            const DeepCollectionEquality()
                .equals(other.currentValueGrams, currentValueGrams));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentValueKg),
      const DeepCollectionEquality().hash(currentValueGrams));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeightStateCopyWith<_$_WeightState> get copyWith =>
      __$$_WeightStateCopyWithImpl<_$_WeightState>(this, _$identity);
}

abstract class _WeightState implements WeightState {
  factory _WeightState(
      {final dynamic currentValueKg,
      final dynamic currentValueGrams}) = _$_WeightState;

  @override
  dynamic get currentValueKg;
  @override
  dynamic get currentValueGrams;
  @override
  @JsonKey(ignore: true)
  _$$_WeightStateCopyWith<_$_WeightState> get copyWith =>
      throw _privateConstructorUsedError;
}
