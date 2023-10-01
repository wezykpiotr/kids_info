// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_personal_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditPersonalInfoModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DateTime get birthday => throw _privateConstructorUsedError;
  String get weight => throw _privateConstructorUsedError;
  num get height => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String id, String name, DateTime birthday, String weight,
            num height)
        $default, {
    required TResult Function(String id, String name, String sex, bool twin,
            DateTime birthday, String weight, num height, num headSize)
        addChild,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String id, String name, DateTime birthday, String weight,
            num height)?
        $default, {
    TResult? Function(String id, String name, String sex, bool twin,
            DateTime birthday, String weight, num height, num headSize)?
        addChild,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id, String name, DateTime birthday, String weight,
            num height)?
        $default, {
    TResult Function(String id, String name, String sex, bool twin,
            DateTime birthday, String weight, num height, num headSize)?
        addChild,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_EditPersonalInfoModel value) $default, {
    required TResult Function(EditPersonalInfoModelAddChild value) addChild,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_EditPersonalInfoModel value)? $default, {
    TResult? Function(EditPersonalInfoModelAddChild value)? addChild,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_EditPersonalInfoModel value)? $default, {
    TResult Function(EditPersonalInfoModelAddChild value)? addChild,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditPersonalInfoModelCopyWith<EditPersonalInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditPersonalInfoModelCopyWith<$Res> {
  factory $EditPersonalInfoModelCopyWith(EditPersonalInfoModel value,
          $Res Function(EditPersonalInfoModel) then) =
      _$EditPersonalInfoModelCopyWithImpl<$Res, EditPersonalInfoModel>;
  @useResult
  $Res call(
      {String id, String name, DateTime birthday, String weight, num height});
}

/// @nodoc
class _$EditPersonalInfoModelCopyWithImpl<$Res,
        $Val extends EditPersonalInfoModel>
    implements $EditPersonalInfoModelCopyWith<$Res> {
  _$EditPersonalInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? birthday = null,
    Object? weight = null,
    Object? height = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EditPersonalInfoModelCopyWith<$Res>
    implements $EditPersonalInfoModelCopyWith<$Res> {
  factory _$$_EditPersonalInfoModelCopyWith(_$_EditPersonalInfoModel value,
          $Res Function(_$_EditPersonalInfoModel) then) =
      __$$_EditPersonalInfoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String name, DateTime birthday, String weight, num height});
}

/// @nodoc
class __$$_EditPersonalInfoModelCopyWithImpl<$Res>
    extends _$EditPersonalInfoModelCopyWithImpl<$Res, _$_EditPersonalInfoModel>
    implements _$$_EditPersonalInfoModelCopyWith<$Res> {
  __$$_EditPersonalInfoModelCopyWithImpl(_$_EditPersonalInfoModel _value,
      $Res Function(_$_EditPersonalInfoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? birthday = null,
    Object? weight = null,
    Object? height = null,
  }) {
    return _then(_$_EditPersonalInfoModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

class _$_EditPersonalInfoModel implements _EditPersonalInfoModel {
  _$_EditPersonalInfoModel(
      {required this.id,
      required this.name,
      required this.birthday,
      required this.weight,
      required this.height});

  @override
  final String id;
  @override
  final String name;
  @override
  final DateTime birthday;
  @override
  final String weight;
  @override
  final num height;

  @override
  String toString() {
    return 'EditPersonalInfoModel(id: $id, name: $name, birthday: $birthday, weight: $weight, height: $height)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditPersonalInfoModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.height, height) || other.height == height));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, birthday, weight, height);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditPersonalInfoModelCopyWith<_$_EditPersonalInfoModel> get copyWith =>
      __$$_EditPersonalInfoModelCopyWithImpl<_$_EditPersonalInfoModel>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String id, String name, DateTime birthday, String weight,
            num height)
        $default, {
    required TResult Function(String id, String name, String sex, bool twin,
            DateTime birthday, String weight, num height, num headSize)
        addChild,
  }) {
    return $default(id, name, birthday, weight, height);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String id, String name, DateTime birthday, String weight,
            num height)?
        $default, {
    TResult? Function(String id, String name, String sex, bool twin,
            DateTime birthday, String weight, num height, num headSize)?
        addChild,
  }) {
    return $default?.call(id, name, birthday, weight, height);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id, String name, DateTime birthday, String weight,
            num height)?
        $default, {
    TResult Function(String id, String name, String sex, bool twin,
            DateTime birthday, String weight, num height, num headSize)?
        addChild,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(id, name, birthday, weight, height);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_EditPersonalInfoModel value) $default, {
    required TResult Function(EditPersonalInfoModelAddChild value) addChild,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_EditPersonalInfoModel value)? $default, {
    TResult? Function(EditPersonalInfoModelAddChild value)? addChild,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_EditPersonalInfoModel value)? $default, {
    TResult Function(EditPersonalInfoModelAddChild value)? addChild,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _EditPersonalInfoModel implements EditPersonalInfoModel {
  factory _EditPersonalInfoModel(
      {required final String id,
      required final String name,
      required final DateTime birthday,
      required final String weight,
      required final num height}) = _$_EditPersonalInfoModel;

  @override
  String get id;
  @override
  String get name;
  @override
  DateTime get birthday;
  @override
  String get weight;
  @override
  num get height;
  @override
  @JsonKey(ignore: true)
  _$$_EditPersonalInfoModelCopyWith<_$_EditPersonalInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditPersonalInfoModelAddChildCopyWith<$Res>
    implements $EditPersonalInfoModelCopyWith<$Res> {
  factory _$$EditPersonalInfoModelAddChildCopyWith(
          _$EditPersonalInfoModelAddChild value,
          $Res Function(_$EditPersonalInfoModelAddChild) then) =
      __$$EditPersonalInfoModelAddChildCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String sex,
      bool twin,
      DateTime birthday,
      String weight,
      num height,
      num headSize});
}

/// @nodoc
class __$$EditPersonalInfoModelAddChildCopyWithImpl<$Res>
    extends _$EditPersonalInfoModelCopyWithImpl<$Res,
        _$EditPersonalInfoModelAddChild>
    implements _$$EditPersonalInfoModelAddChildCopyWith<$Res> {
  __$$EditPersonalInfoModelAddChildCopyWithImpl(
      _$EditPersonalInfoModelAddChild _value,
      $Res Function(_$EditPersonalInfoModelAddChild) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? sex = null,
    Object? twin = null,
    Object? birthday = null,
    Object? weight = null,
    Object? height = null,
    Object? headSize = null,
  }) {
    return _then(_$EditPersonalInfoModelAddChild(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sex: null == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as String,
      twin: null == twin
          ? _value.twin
          : twin // ignore: cast_nullable_to_non_nullable
              as bool,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as num,
      headSize: null == headSize
          ? _value.headSize
          : headSize // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

class _$EditPersonalInfoModelAddChild implements EditPersonalInfoModelAddChild {
  _$EditPersonalInfoModelAddChild(
      {required this.id,
      required this.name,
      required this.sex,
      required this.twin,
      required this.birthday,
      required this.weight,
      required this.height,
      required this.headSize});

  @override
  final String id;
  @override
  final String name;
  @override
  final String sex;
  @override
  final bool twin;
  @override
  final DateTime birthday;
  @override
  final String weight;
  @override
  final num height;
  @override
  final num headSize;

  @override
  String toString() {
    return 'EditPersonalInfoModel.addChild(id: $id, name: $name, sex: $sex, twin: $twin, birthday: $birthday, weight: $weight, height: $height, headSize: $headSize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditPersonalInfoModelAddChild &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.twin, twin) || other.twin == twin) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.headSize, headSize) ||
                other.headSize == headSize));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, sex, twin, birthday, weight, height, headSize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditPersonalInfoModelAddChildCopyWith<_$EditPersonalInfoModelAddChild>
      get copyWith => __$$EditPersonalInfoModelAddChildCopyWithImpl<
          _$EditPersonalInfoModelAddChild>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String id, String name, DateTime birthday, String weight,
            num height)
        $default, {
    required TResult Function(String id, String name, String sex, bool twin,
            DateTime birthday, String weight, num height, num headSize)
        addChild,
  }) {
    return addChild(id, name, sex, twin, birthday, weight, height, headSize);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String id, String name, DateTime birthday, String weight,
            num height)?
        $default, {
    TResult? Function(String id, String name, String sex, bool twin,
            DateTime birthday, String weight, num height, num headSize)?
        addChild,
  }) {
    return addChild?.call(
        id, name, sex, twin, birthday, weight, height, headSize);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id, String name, DateTime birthday, String weight,
            num height)?
        $default, {
    TResult Function(String id, String name, String sex, bool twin,
            DateTime birthday, String weight, num height, num headSize)?
        addChild,
    required TResult orElse(),
  }) {
    if (addChild != null) {
      return addChild(id, name, sex, twin, birthday, weight, height, headSize);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_EditPersonalInfoModel value) $default, {
    required TResult Function(EditPersonalInfoModelAddChild value) addChild,
  }) {
    return addChild(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_EditPersonalInfoModel value)? $default, {
    TResult? Function(EditPersonalInfoModelAddChild value)? addChild,
  }) {
    return addChild?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_EditPersonalInfoModel value)? $default, {
    TResult Function(EditPersonalInfoModelAddChild value)? addChild,
    required TResult orElse(),
  }) {
    if (addChild != null) {
      return addChild(this);
    }
    return orElse();
  }
}

abstract class EditPersonalInfoModelAddChild implements EditPersonalInfoModel {
  factory EditPersonalInfoModelAddChild(
      {required final String id,
      required final String name,
      required final String sex,
      required final bool twin,
      required final DateTime birthday,
      required final String weight,
      required final num height,
      required final num headSize}) = _$EditPersonalInfoModelAddChild;

  @override
  String get id;
  @override
  String get name;
  String get sex;
  bool get twin;
  @override
  DateTime get birthday;
  @override
  String get weight;
  @override
  num get height;
  num get headSize;
  @override
  @JsonKey(ignore: true)
  _$$EditPersonalInfoModelAddChildCopyWith<_$EditPersonalInfoModelAddChild>
      get copyWith => throw _privateConstructorUsedError;
}
