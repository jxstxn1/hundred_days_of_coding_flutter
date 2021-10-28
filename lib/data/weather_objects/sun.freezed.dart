// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sun.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SunTearOff {
  const _$SunTearOff();

  _Sun call({String? sunrise, String? sunset}) {
    return _Sun(
      sunrise: sunrise,
      sunset: sunset,
    );
  }
}

/// @nodoc
const $Sun = _$SunTearOff();

/// @nodoc
mixin _$Sun {
  String? get sunrise => throw _privateConstructorUsedError;
  String? get sunset => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SunCopyWith<Sun> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SunCopyWith<$Res> {
  factory $SunCopyWith(Sun value, $Res Function(Sun) then) = _$SunCopyWithImpl<$Res>;
  $Res call({String? sunrise, String? sunset});
}

/// @nodoc
class _$SunCopyWithImpl<$Res> implements $SunCopyWith<$Res> {
  _$SunCopyWithImpl(this._value, this._then);

  final Sun _value;
  // ignore: unused_field
  final $Res Function(Sun) _then;

  @override
  $Res call({
    Object? sunrise = freezed,
    Object? sunset = freezed,
  }) {
    return _then(_value.copyWith(
      sunrise: sunrise == freezed
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as String?,
      sunset: sunset == freezed
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$SunCopyWith<$Res> implements $SunCopyWith<$Res> {
  factory _$SunCopyWith(_Sun value, $Res Function(_Sun) then) = __$SunCopyWithImpl<$Res>;
  @override
  $Res call({String? sunrise, String? sunset});
}

/// @nodoc
class __$SunCopyWithImpl<$Res> extends _$SunCopyWithImpl<$Res> implements _$SunCopyWith<$Res> {
  __$SunCopyWithImpl(_Sun _value, $Res Function(_Sun) _then) : super(_value, (v) => _then(v as _Sun));

  @override
  _Sun get _value => super._value as _Sun;

  @override
  $Res call({
    Object? sunrise = freezed,
    Object? sunset = freezed,
  }) {
    return _then(_Sun(
      sunrise: sunrise == freezed
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as String?,
      sunset: sunset == freezed
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Sun implements _Sun {
  const _$_Sun({this.sunrise, this.sunset});

  @override
  final String? sunrise;
  @override
  final String? sunset;

  @override
  String toString() {
    return 'Sun(sunrise: $sunrise, sunset: $sunset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Sun &&
            (identical(other.sunrise, sunrise) || other.sunrise == sunrise) &&
            (identical(other.sunset, sunset) || other.sunset == sunset));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sunrise, sunset);

  @JsonKey(ignore: true)
  @override
  _$SunCopyWith<_Sun> get copyWith => __$SunCopyWithImpl<_Sun>(this, _$identity);
}

abstract class _Sun implements Sun {
  const factory _Sun({String? sunrise, String? sunset}) = _$_Sun;

  @override
  String? get sunrise;
  @override
  String? get sunset;
  @override
  @JsonKey(ignore: true)
  _$SunCopyWith<_Sun> get copyWith => throw _privateConstructorUsedError;
}
