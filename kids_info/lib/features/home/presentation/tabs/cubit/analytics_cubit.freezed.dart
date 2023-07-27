// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analytics_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AnalyticsState {
  List<AnalyticsModel> get items => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnalyticsStateCopyWith<AnalyticsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalyticsStateCopyWith<$Res> {
  factory $AnalyticsStateCopyWith(
          AnalyticsState value, $Res Function(AnalyticsState) then) =
      _$AnalyticsStateCopyWithImpl<$Res, AnalyticsState>;
  @useResult
  $Res call({List<AnalyticsModel> items, Status status, String? errorMessage});
}

/// @nodoc
class _$AnalyticsStateCopyWithImpl<$Res, $Val extends AnalyticsState>
    implements $AnalyticsStateCopyWith<$Res> {
  _$AnalyticsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<AnalyticsModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnalyticsStateCopyWith<$Res>
    implements $AnalyticsStateCopyWith<$Res> {
  factory _$$_AnalyticsStateCopyWith(
          _$_AnalyticsState value, $Res Function(_$_AnalyticsState) then) =
      __$$_AnalyticsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AnalyticsModel> items, Status status, String? errorMessage});
}

/// @nodoc
class __$$_AnalyticsStateCopyWithImpl<$Res>
    extends _$AnalyticsStateCopyWithImpl<$Res, _$_AnalyticsState>
    implements _$$_AnalyticsStateCopyWith<$Res> {
  __$$_AnalyticsStateCopyWithImpl(
      _$_AnalyticsState _value, $Res Function(_$_AnalyticsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_AnalyticsState(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<AnalyticsModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AnalyticsState implements _AnalyticsState {
  _$_AnalyticsState(
      {final List<AnalyticsModel> items = const [],
      this.status = Status.initial,
      this.errorMessage})
      : _items = items;

  final List<AnalyticsModel> _items;
  @override
  @JsonKey()
  List<AnalyticsModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey()
  final Status status;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'AnalyticsState(items: $items, status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnalyticsState &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_items), status, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnalyticsStateCopyWith<_$_AnalyticsState> get copyWith =>
      __$$_AnalyticsStateCopyWithImpl<_$_AnalyticsState>(this, _$identity);
}

abstract class _AnalyticsState implements AnalyticsState {
  factory _AnalyticsState(
      {final List<AnalyticsModel> items,
      final Status status,
      final String? errorMessage}) = _$_AnalyticsState;

  @override
  List<AnalyticsModel> get items;
  @override
  Status get status;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_AnalyticsStateCopyWith<_$_AnalyticsState> get copyWith =>
      throw _privateConstructorUsedError;
}
