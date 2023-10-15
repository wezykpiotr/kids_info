// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'measurments_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MeasurmentsState {
  dynamic get currentValue1 => throw _privateConstructorUsedError;
  dynamic get currentValue2 => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MeasurmentsStateCopyWith<MeasurmentsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeasurmentsStateCopyWith<$Res> {
  factory $MeasurmentsStateCopyWith(
          MeasurmentsState value, $Res Function(MeasurmentsState) then) =
      _$MeasurmentsStateCopyWithImpl<$Res, MeasurmentsState>;
  @useResult
  $Res call({dynamic currentValue1, dynamic currentValue2});
}

/// @nodoc
class _$MeasurmentsStateCopyWithImpl<$Res, $Val extends MeasurmentsState>
    implements $MeasurmentsStateCopyWith<$Res> {
  _$MeasurmentsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentValue1 = freezed,
    Object? currentValue2 = freezed,
  }) {
    return _then(_value.copyWith(
      currentValue1: freezed == currentValue1
          ? _value.currentValue1
          : currentValue1 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      currentValue2: freezed == currentValue2
          ? _value.currentValue2
          : currentValue2 // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MeasurmentsStateCopyWith<$Res>
    implements $MeasurmentsStateCopyWith<$Res> {
  factory _$$_MeasurmentsStateCopyWith(
          _$_MeasurmentsState value, $Res Function(_$_MeasurmentsState) then) =
      __$$_MeasurmentsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic currentValue1, dynamic currentValue2});
}

/// @nodoc
class __$$_MeasurmentsStateCopyWithImpl<$Res>
    extends _$MeasurmentsStateCopyWithImpl<$Res, _$_MeasurmentsState>
    implements _$$_MeasurmentsStateCopyWith<$Res> {
  __$$_MeasurmentsStateCopyWithImpl(
      _$_MeasurmentsState _value, $Res Function(_$_MeasurmentsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentValue1 = freezed,
    Object? currentValue2 = freezed,
  }) {
    return _then(_$_MeasurmentsState(
      currentValue1:
          freezed == currentValue1 ? _value.currentValue1! : currentValue1,
      currentValue2:
          freezed == currentValue2 ? _value.currentValue2! : currentValue2,
    ));
  }
}

/// @nodoc

class _$_MeasurmentsState implements _MeasurmentsState {
  _$_MeasurmentsState({this.currentValue1 = 0, this.currentValue2 = 0});

  @override
  @JsonKey()
  final dynamic currentValue1;
  @override
  @JsonKey()
  final dynamic currentValue2;

  @override
  String toString() {
    return 'MeasurmentsState(currentValue1: $currentValue1, currentValue2: $currentValue2)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MeasurmentsState &&
            const DeepCollectionEquality()
                .equals(other.currentValue1, currentValue1) &&
            const DeepCollectionEquality()
                .equals(other.currentValue2, currentValue2));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentValue1),
      const DeepCollectionEquality().hash(currentValue2));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MeasurmentsStateCopyWith<_$_MeasurmentsState> get copyWith =>
      __$$_MeasurmentsStateCopyWithImpl<_$_MeasurmentsState>(this, _$identity);
}

abstract class _MeasurmentsState implements MeasurmentsState {
  factory _MeasurmentsState(
      {final dynamic currentValue1,
      final dynamic currentValue2}) = _$_MeasurmentsState;

  @override
  dynamic get currentValue1;
  @override
  dynamic get currentValue2;
  @override
  @JsonKey(ignore: true)
  _$$_MeasurmentsStateCopyWith<_$_MeasurmentsState> get copyWith =>
      throw _privateConstructorUsedError;
}
