// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tab_index_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TabIndexState {
  int get index => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TabIndexStateCopyWith<TabIndexState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TabIndexStateCopyWith<$Res> {
  factory $TabIndexStateCopyWith(
          TabIndexState value, $Res Function(TabIndexState) then) =
      _$TabIndexStateCopyWithImpl<$Res, TabIndexState>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class _$TabIndexStateCopyWithImpl<$Res, $Val extends TabIndexState>
    implements $TabIndexStateCopyWith<$Res> {
  _$TabIndexStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TabIndexStateCopyWith<$Res>
    implements $TabIndexStateCopyWith<$Res> {
  factory _$$_TabIndexStateCopyWith(
          _$_TabIndexState value, $Res Function(_$_TabIndexState) then) =
      __$$_TabIndexStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$_TabIndexStateCopyWithImpl<$Res>
    extends _$TabIndexStateCopyWithImpl<$Res, _$_TabIndexState>
    implements _$$_TabIndexStateCopyWith<$Res> {
  __$$_TabIndexStateCopyWithImpl(
      _$_TabIndexState _value, $Res Function(_$_TabIndexState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$_TabIndexState(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_TabIndexState with DiagnosticableTreeMixin implements _TabIndexState {
  _$_TabIndexState({required this.index});

  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TabIndexState(index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TabIndexState'))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TabIndexState &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TabIndexStateCopyWith<_$_TabIndexState> get copyWith =>
      __$$_TabIndexStateCopyWithImpl<_$_TabIndexState>(this, _$identity);
}

abstract class _TabIndexState implements TabIndexState {
  factory _TabIndexState({required final int index}) = _$_TabIndexState;

  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$_TabIndexStateCopyWith<_$_TabIndexState> get copyWith =>
      throw _privateConstructorUsedError;
}
