// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'switch_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SwitchState {
  bool get currentValue => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SwitchStateCopyWith<SwitchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwitchStateCopyWith<$Res> {
  factory $SwitchStateCopyWith(
          SwitchState value, $Res Function(SwitchState) then) =
      _$SwitchStateCopyWithImpl<$Res, SwitchState>;
  @useResult
  $Res call({bool currentValue});
}

/// @nodoc
class _$SwitchStateCopyWithImpl<$Res, $Val extends SwitchState>
    implements $SwitchStateCopyWith<$Res> {
  _$SwitchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentValue = null,
  }) {
    return _then(_value.copyWith(
      currentValue: null == currentValue
          ? _value.currentValue
          : currentValue // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SwitchStateCopyWith<$Res>
    implements $SwitchStateCopyWith<$Res> {
  factory _$$_SwitchStateCopyWith(
          _$_SwitchState value, $Res Function(_$_SwitchState) then) =
      __$$_SwitchStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool currentValue});
}

/// @nodoc
class __$$_SwitchStateCopyWithImpl<$Res>
    extends _$SwitchStateCopyWithImpl<$Res, _$_SwitchState>
    implements _$$_SwitchStateCopyWith<$Res> {
  __$$_SwitchStateCopyWithImpl(
      _$_SwitchState _value, $Res Function(_$_SwitchState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentValue = null,
  }) {
    return _then(_$_SwitchState(
      currentValue: null == currentValue
          ? _value.currentValue
          : currentValue // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SwitchState implements _SwitchState {
  _$_SwitchState({this.currentValue = false});

  @override
  @JsonKey()
  final bool currentValue;

  @override
  String toString() {
    return 'SwitchState(currentValue: $currentValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SwitchState &&
            (identical(other.currentValue, currentValue) ||
                other.currentValue == currentValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SwitchStateCopyWith<_$_SwitchState> get copyWith =>
      __$$_SwitchStateCopyWithImpl<_$_SwitchState>(this, _$identity);
}

abstract class _SwitchState implements SwitchState {
  factory _SwitchState({final bool currentValue}) = _$_SwitchState;

  @override
  bool get currentValue;
  @override
  @JsonKey(ignore: true)
  _$$_SwitchStateCopyWith<_$_SwitchState> get copyWith =>
      throw _privateConstructorUsedError;
}
