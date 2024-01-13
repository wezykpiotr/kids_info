// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'controller_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ControllerState {
  String get currentText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ControllerStateCopyWith<ControllerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ControllerStateCopyWith<$Res> {
  factory $ControllerStateCopyWith(
          ControllerState value, $Res Function(ControllerState) then) =
      _$ControllerStateCopyWithImpl<$Res, ControllerState>;
  @useResult
  $Res call({String currentText});
}

/// @nodoc
class _$ControllerStateCopyWithImpl<$Res, $Val extends ControllerState>
    implements $ControllerStateCopyWith<$Res> {
  _$ControllerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentText = null,
  }) {
    return _then(_value.copyWith(
      currentText: null == currentText
          ? _value.currentText
          : currentText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ControllerStateCopyWith<$Res>
    implements $ControllerStateCopyWith<$Res> {
  factory _$$_ControllerStateCopyWith(
          _$_ControllerState value, $Res Function(_$_ControllerState) then) =
      __$$_ControllerStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String currentText});
}

/// @nodoc
class __$$_ControllerStateCopyWithImpl<$Res>
    extends _$ControllerStateCopyWithImpl<$Res, _$_ControllerState>
    implements _$$_ControllerStateCopyWith<$Res> {
  __$$_ControllerStateCopyWithImpl(
      _$_ControllerState _value, $Res Function(_$_ControllerState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentText = null,
  }) {
    return _then(_$_ControllerState(
      currentText: null == currentText
          ? _value.currentText
          : currentText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ControllerState implements _ControllerState {
  _$_ControllerState({required this.currentText});

  @override
  final String currentText;

  @override
  String toString() {
    return 'ControllerState(currentText: $currentText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ControllerState &&
            (identical(other.currentText, currentText) ||
                other.currentText == currentText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ControllerStateCopyWith<_$_ControllerState> get copyWith =>
      __$$_ControllerStateCopyWithImpl<_$_ControllerState>(this, _$identity);
}

abstract class _ControllerState implements ControllerState {
  factory _ControllerState({required final String currentText}) =
      _$_ControllerState;

  @override
  String get currentText;
  @override
  @JsonKey(ignore: true)
  _$$_ControllerStateCopyWith<_$_ControllerState> get copyWith =>
      throw _privateConstructorUsedError;
}
