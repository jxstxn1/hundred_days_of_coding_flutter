// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'snow.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SnowTearOff {
  const _$SnowTearOff();

  _Snow call({double? snowVolumeOneHour, double? snowVolumeThreeHours}) {
    return _Snow(
      snowVolumeOneHour: snowVolumeOneHour,
      snowVolumeThreeHours: snowVolumeThreeHours,
    );
  }
}

/// @nodoc
const $Snow = _$SnowTearOff();

/// @nodoc
mixin _$Snow {
  double? get snowVolumeOneHour => throw _privateConstructorUsedError;
  double? get snowVolumeThreeHours => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SnowCopyWith<Snow> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnowCopyWith<$Res> {
  factory $SnowCopyWith(Snow value, $Res Function(Snow) then) = _$SnowCopyWithImpl<$Res>;
  $Res call({double? snowVolumeOneHour, double? snowVolumeThreeHours});
}

/// @nodoc
class _$SnowCopyWithImpl<$Res> implements $SnowCopyWith<$Res> {
  _$SnowCopyWithImpl(this._value, this._then);

  final Snow _value;
  // ignore: unused_field
  final $Res Function(Snow) _then;

  @override
  $Res call({
    Object? snowVolumeOneHour = freezed,
    Object? snowVolumeThreeHours = freezed,
  }) {
    return _then(_value.copyWith(
      snowVolumeOneHour: snowVolumeOneHour == freezed
          ? _value.snowVolumeOneHour
          : snowVolumeOneHour // ignore: cast_nullable_to_non_nullable
              as double?,
      snowVolumeThreeHours: snowVolumeThreeHours == freezed
          ? _value.snowVolumeThreeHours
          : snowVolumeThreeHours // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$SnowCopyWith<$Res> implements $SnowCopyWith<$Res> {
  factory _$SnowCopyWith(_Snow value, $Res Function(_Snow) then) = __$SnowCopyWithImpl<$Res>;
  @override
  $Res call({double? snowVolumeOneHour, double? snowVolumeThreeHours});
}

/// @nodoc
class __$SnowCopyWithImpl<$Res> extends _$SnowCopyWithImpl<$Res> implements _$SnowCopyWith<$Res> {
  __$SnowCopyWithImpl(_Snow _value, $Res Function(_Snow) _then) : super(_value, (v) => _then(v as _Snow));

  @override
  _Snow get _value => super._value as _Snow;

  @override
  $Res call({
    Object? snowVolumeOneHour = freezed,
    Object? snowVolumeThreeHours = freezed,
  }) {
    return _then(_Snow(
      snowVolumeOneHour: snowVolumeOneHour == freezed
          ? _value.snowVolumeOneHour
          : snowVolumeOneHour // ignore: cast_nullable_to_non_nullable
              as double?,
      snowVolumeThreeHours: snowVolumeThreeHours == freezed
          ? _value.snowVolumeThreeHours
          : snowVolumeThreeHours // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$_Snow implements _Snow {
  const _$_Snow({this.snowVolumeOneHour, this.snowVolumeThreeHours});

  @override
  final double? snowVolumeOneHour;
  @override
  final double? snowVolumeThreeHours;

  @override
  String toString() {
    return 'Snow(snowVolumeOneHour: $snowVolumeOneHour, snowVolumeThreeHours: $snowVolumeThreeHours)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Snow &&
            (identical(other.snowVolumeOneHour, snowVolumeOneHour) || other.snowVolumeOneHour == snowVolumeOneHour) &&
            (identical(other.snowVolumeThreeHours, snowVolumeThreeHours) ||
                other.snowVolumeThreeHours == snowVolumeThreeHours));
  }

  @override
  int get hashCode => Object.hash(runtimeType, snowVolumeOneHour, snowVolumeThreeHours);

  @JsonKey(ignore: true)
  @override
  _$SnowCopyWith<_Snow> get copyWith => __$SnowCopyWithImpl<_Snow>(this, _$identity);
}

abstract class _Snow implements Snow {
  const factory _Snow({double? snowVolumeOneHour, double? snowVolumeThreeHours}) = _$_Snow;

  @override
  double? get snowVolumeOneHour;
  @override
  double? get snowVolumeThreeHours;
  @override
  @JsonKey(ignore: true)
  _$SnowCopyWith<_Snow> get copyWith => throw _privateConstructorUsedError;
}
