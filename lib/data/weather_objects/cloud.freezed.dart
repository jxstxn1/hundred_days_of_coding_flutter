// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cloud.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CloudTearOff {
  const _$CloudTearOff();

  _Cloud call({double? cloudiness}) {
    return _Cloud(
      cloudiness: cloudiness,
    );
  }
}

/// @nodoc
const $Cloud = _$CloudTearOff();

/// @nodoc
mixin _$Cloud {
  double? get cloudiness => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CloudCopyWith<Cloud> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CloudCopyWith<$Res> {
  factory $CloudCopyWith(Cloud value, $Res Function(Cloud) then) = _$CloudCopyWithImpl<$Res>;
  $Res call({double? cloudiness});
}

/// @nodoc
class _$CloudCopyWithImpl<$Res> implements $CloudCopyWith<$Res> {
  _$CloudCopyWithImpl(this._value, this._then);

  final Cloud _value;
  // ignore: unused_field
  final $Res Function(Cloud) _then;

  @override
  $Res call({
    Object? cloudiness = freezed,
  }) {
    return _then(_value.copyWith(
      cloudiness: cloudiness == freezed
          ? _value.cloudiness
          : cloudiness // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$CloudCopyWith<$Res> implements $CloudCopyWith<$Res> {
  factory _$CloudCopyWith(_Cloud value, $Res Function(_Cloud) then) = __$CloudCopyWithImpl<$Res>;
  @override
  $Res call({double? cloudiness});
}

/// @nodoc
class __$CloudCopyWithImpl<$Res> extends _$CloudCopyWithImpl<$Res> implements _$CloudCopyWith<$Res> {
  __$CloudCopyWithImpl(_Cloud _value, $Res Function(_Cloud) _then) : super(_value, (v) => _then(v as _Cloud));

  @override
  _Cloud get _value => super._value as _Cloud;

  @override
  $Res call({
    Object? cloudiness = freezed,
  }) {
    return _then(_Cloud(
      cloudiness: cloudiness == freezed
          ? _value.cloudiness
          : cloudiness // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$_Cloud implements _Cloud {
  const _$_Cloud({this.cloudiness});

  @override
  final double? cloudiness;

  @override
  String toString() {
    return 'Cloud(cloudiness: $cloudiness)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Cloud &&
            (identical(other.cloudiness, cloudiness) || other.cloudiness == cloudiness));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cloudiness);

  @JsonKey(ignore: true)
  @override
  _$CloudCopyWith<_Cloud> get copyWith => __$CloudCopyWithImpl<_Cloud>(this, _$identity);
}

abstract class _Cloud implements Cloud {
  const factory _Cloud({double? cloudiness}) = _$_Cloud;

  @override
  double? get cloudiness;
  @override
  @JsonKey(ignore: true)
  _$CloudCopyWith<_Cloud> get copyWith => throw _privateConstructorUsedError;
}
