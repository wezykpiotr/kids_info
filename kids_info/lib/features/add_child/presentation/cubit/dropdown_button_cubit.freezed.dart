// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dropdown_button_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DropdownButtonState {
  String get currentValue => throw _privateConstructorUsedError;
  List<String> get sex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DropdownButtonStateCopyWith<DropdownButtonState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DropdownButtonStateCopyWith<$Res> {
  factory $DropdownButtonStateCopyWith(
          DropdownButtonState value, $Res Function(DropdownButtonState) then) =
      _$DropdownButtonStateCopyWithImpl<$Res, DropdownButtonState>;
  @useResult
  $Res call({String currentValue, List<String> sex});
}

/// @nodoc
class _$DropdownButtonStateCopyWithImpl<$Res, $Val extends DropdownButtonState>
    implements $DropdownButtonStateCopyWith<$Res> {
  _$DropdownButtonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentValue = null,
    Object? sex = null,
  }) {
    return _then(_value.copyWith(
      currentValue: null == currentValue
          ? _value.currentValue
          : currentValue // ignore: cast_nullable_to_non_nullable
              as String,
      sex: null == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DropdownButtonStateCopyWith<$Res>
    implements $DropdownButtonStateCopyWith<$Res> {
  factory _$$_DropdownButtonStateCopyWith(_$_DropdownButtonState value,
          $Res Function(_$_DropdownButtonState) then) =
      __$$_DropdownButtonStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String currentValue, List<String> sex});
}

/// @nodoc
class __$$_DropdownButtonStateCopyWithImpl<$Res>
    extends _$DropdownButtonStateCopyWithImpl<$Res, _$_DropdownButtonState>
    implements _$$_DropdownButtonStateCopyWith<$Res> {
  __$$_DropdownButtonStateCopyWithImpl(_$_DropdownButtonState _value,
      $Res Function(_$_DropdownButtonState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentValue = null,
    Object? sex = null,
  }) {
    return _then(_$_DropdownButtonState(
      currentValue: null == currentValue
          ? _value.currentValue
          : currentValue // ignore: cast_nullable_to_non_nullable
              as String,
      sex: null == sex
          ? _value._sex
          : sex // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_DropdownButtonState implements _DropdownButtonState {
  const _$_DropdownButtonState(
      {this.currentValue = 'male',
      final List<String> sex = const ['male', 'female']})
      : _sex = sex;

  @override
  @JsonKey()
  final String currentValue;
  final List<String> _sex;
  @override
  @JsonKey()
  List<String> get sex {
    if (_sex is EqualUnmodifiableListView) return _sex;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sex);
  }

  @override
  String toString() {
    return 'DropdownButtonState(currentValue: $currentValue, sex: $sex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DropdownButtonState &&
            (identical(other.currentValue, currentValue) ||
                other.currentValue == currentValue) &&
            const DeepCollectionEquality().equals(other._sex, _sex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, currentValue, const DeepCollectionEquality().hash(_sex));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DropdownButtonStateCopyWith<_$_DropdownButtonState> get copyWith =>
      __$$_DropdownButtonStateCopyWithImpl<_$_DropdownButtonState>(
          this, _$identity);
}

abstract class _DropdownButtonState implements DropdownButtonState {
  const factory _DropdownButtonState(
      {final String currentValue,
      final List<String> sex}) = _$_DropdownButtonState;

  @override
  String get currentValue;
  @override
  List<String> get sex;
  @override
  @JsonKey(ignore: true)
  _$$_DropdownButtonStateCopyWith<_$_DropdownButtonState> get copyWith =>
      throw _privateConstructorUsedError;
}
