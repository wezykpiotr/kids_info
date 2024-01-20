// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'drop_down_button_name_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DropDownButtonNameState {
  String? get currentId => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DropDownButtonNameStateCopyWith<DropDownButtonNameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DropDownButtonNameStateCopyWith<$Res> {
  factory $DropDownButtonNameStateCopyWith(DropDownButtonNameState value,
          $Res Function(DropDownButtonNameState) then) =
      _$DropDownButtonNameStateCopyWithImpl<$Res, DropDownButtonNameState>;
  @useResult
  $Res call({String? currentId, int index});
}

/// @nodoc
class _$DropDownButtonNameStateCopyWithImpl<$Res,
        $Val extends DropDownButtonNameState>
    implements $DropDownButtonNameStateCopyWith<$Res> {
  _$DropDownButtonNameStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentId = freezed,
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      currentId: freezed == currentId
          ? _value.currentId
          : currentId // ignore: cast_nullable_to_non_nullable
              as String?,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DropDownButtonNameStateCopyWith<$Res>
    implements $DropDownButtonNameStateCopyWith<$Res> {
  factory _$$_DropDownButtonNameStateCopyWith(_$_DropDownButtonNameState value,
          $Res Function(_$_DropDownButtonNameState) then) =
      __$$_DropDownButtonNameStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? currentId, int index});
}

/// @nodoc
class __$$_DropDownButtonNameStateCopyWithImpl<$Res>
    extends _$DropDownButtonNameStateCopyWithImpl<$Res,
        _$_DropDownButtonNameState>
    implements _$$_DropDownButtonNameStateCopyWith<$Res> {
  __$$_DropDownButtonNameStateCopyWithImpl(_$_DropDownButtonNameState _value,
      $Res Function(_$_DropDownButtonNameState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentId = freezed,
    Object? index = null,
  }) {
    return _then(_$_DropDownButtonNameState(
      currentId: freezed == currentId
          ? _value.currentId
          : currentId // ignore: cast_nullable_to_non_nullable
              as String?,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DropDownButtonNameState
    with DiagnosticableTreeMixin
    implements _DropDownButtonNameState {
  _$_DropDownButtonNameState({this.currentId, required this.index});

  @override
  final String? currentId;
  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DropDownButtonNameState(currentId: $currentId, index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DropDownButtonNameState'))
      ..add(DiagnosticsProperty('currentId', currentId))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DropDownButtonNameState &&
            (identical(other.currentId, currentId) ||
                other.currentId == currentId) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentId, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DropDownButtonNameStateCopyWith<_$_DropDownButtonNameState>
      get copyWith =>
          __$$_DropDownButtonNameStateCopyWithImpl<_$_DropDownButtonNameState>(
              this, _$identity);
}

abstract class _DropDownButtonNameState implements DropDownButtonNameState {
  factory _DropDownButtonNameState(
      {final String? currentId,
      required final int index}) = _$_DropDownButtonNameState;

  @override
  String? get currentId;
  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$_DropDownButtonNameStateCopyWith<_$_DropDownButtonNameState>
      get copyWith => throw _privateConstructorUsedError;
}
