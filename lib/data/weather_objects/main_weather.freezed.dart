// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'main_weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MainWeatherTearOff {
  const _$MainWeatherTearOff();

  _MainWeather call(
      {required double temp,
      required double feelsLike,
      required double tempMin,
      required double tempMax,
      required double pressure,
      required double humidity}) {
    return _MainWeather(
      temp: temp,
      feelsLike: feelsLike,
      tempMin: tempMin,
      tempMax: tempMax,
      pressure: pressure,
      humidity: humidity,
    );
  }
}

/// @nodoc
const $MainWeather = _$MainWeatherTearOff();

/// @nodoc
mixin _$MainWeather {
  double get temp => throw _privateConstructorUsedError;
  double get feelsLike => throw _privateConstructorUsedError;
  double get tempMin => throw _privateConstructorUsedError;
  double get tempMax => throw _privateConstructorUsedError;
  double get pressure => throw _privateConstructorUsedError;
  double get humidity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainWeatherCopyWith<MainWeather> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainWeatherCopyWith<$Res> {
  factory $MainWeatherCopyWith(MainWeather value, $Res Function(MainWeather) then) = _$MainWeatherCopyWithImpl<$Res>;
  $Res call({double temp, double feelsLike, double tempMin, double tempMax, double pressure, double humidity});
}

/// @nodoc
class _$MainWeatherCopyWithImpl<$Res> implements $MainWeatherCopyWith<$Res> {
  _$MainWeatherCopyWithImpl(this._value, this._then);

  final MainWeather _value;
  // ignore: unused_field
  final $Res Function(MainWeather) _then;

  @override
  $Res call({
    Object? temp = freezed,
    Object? feelsLike = freezed,
    Object? tempMin = freezed,
    Object? tempMax = freezed,
    Object? pressure = freezed,
    Object? humidity = freezed,
  }) {
    return _then(_value.copyWith(
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      feelsLike: feelsLike == freezed
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double,
      tempMin: tempMin == freezed
          ? _value.tempMin
          : tempMin // ignore: cast_nullable_to_non_nullable
              as double,
      tempMax: tempMax == freezed
          ? _value.tempMax
          : tempMax // ignore: cast_nullable_to_non_nullable
              as double,
      pressure: pressure == freezed
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$MainWeatherCopyWith<$Res> implements $MainWeatherCopyWith<$Res> {
  factory _$MainWeatherCopyWith(_MainWeather value, $Res Function(_MainWeather) then) =
      __$MainWeatherCopyWithImpl<$Res>;
  @override
  $Res call({double temp, double feelsLike, double tempMin, double tempMax, double pressure, double humidity});
}

/// @nodoc
class __$MainWeatherCopyWithImpl<$Res> extends _$MainWeatherCopyWithImpl<$Res> implements _$MainWeatherCopyWith<$Res> {
  __$MainWeatherCopyWithImpl(_MainWeather _value, $Res Function(_MainWeather) _then)
      : super(_value, (v) => _then(v as _MainWeather));

  @override
  _MainWeather get _value => super._value as _MainWeather;

  @override
  $Res call({
    Object? temp = freezed,
    Object? feelsLike = freezed,
    Object? tempMin = freezed,
    Object? tempMax = freezed,
    Object? pressure = freezed,
    Object? humidity = freezed,
  }) {
    return _then(_MainWeather(
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      feelsLike: feelsLike == freezed
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double,
      tempMin: tempMin == freezed
          ? _value.tempMin
          : tempMin // ignore: cast_nullable_to_non_nullable
              as double,
      tempMax: tempMax == freezed
          ? _value.tempMax
          : tempMax // ignore: cast_nullable_to_non_nullable
              as double,
      pressure: pressure == freezed
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_MainWeather implements _MainWeather {
  const _$_MainWeather(
      {required this.temp,
      required this.feelsLike,
      required this.tempMin,
      required this.tempMax,
      required this.pressure,
      required this.humidity});

  @override
  final double temp;
  @override
  final double feelsLike;
  @override
  final double tempMin;
  @override
  final double tempMax;
  @override
  final double pressure;
  @override
  final double humidity;

  @override
  String toString() {
    return 'MainWeather(temp: $temp, feelsLike: $feelsLike, tempMin: $tempMin, tempMax: $tempMax, pressure: $pressure, humidity: $humidity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MainWeather &&
            (identical(other.temp, temp) || const DeepCollectionEquality().equals(other.temp, temp)) &&
            (identical(other.feelsLike, feelsLike) ||
                const DeepCollectionEquality().equals(other.feelsLike, feelsLike)) &&
            (identical(other.tempMin, tempMin) || const DeepCollectionEquality().equals(other.tempMin, tempMin)) &&
            (identical(other.tempMax, tempMax) || const DeepCollectionEquality().equals(other.tempMax, tempMax)) &&
            (identical(other.pressure, pressure) || const DeepCollectionEquality().equals(other.pressure, pressure)) &&
            (identical(other.humidity, humidity) || const DeepCollectionEquality().equals(other.humidity, humidity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(temp) ^
      const DeepCollectionEquality().hash(feelsLike) ^
      const DeepCollectionEquality().hash(tempMin) ^
      const DeepCollectionEquality().hash(tempMax) ^
      const DeepCollectionEquality().hash(pressure) ^
      const DeepCollectionEquality().hash(humidity);

  @JsonKey(ignore: true)
  @override
  _$MainWeatherCopyWith<_MainWeather> get copyWith => __$MainWeatherCopyWithImpl<_MainWeather>(this, _$identity);
}

abstract class _MainWeather implements MainWeather {
  const factory _MainWeather(
      {required double temp,
      required double feelsLike,
      required double tempMin,
      required double tempMax,
      required double pressure,
      required double humidity}) = _$_MainWeather;

  @override
  double get temp => throw _privateConstructorUsedError;
  @override
  double get feelsLike => throw _privateConstructorUsedError;
  @override
  double get tempMin => throw _privateConstructorUsedError;
  @override
  double get tempMax => throw _privateConstructorUsedError;
  @override
  double get pressure => throw _privateConstructorUsedError;
  @override
  double get humidity => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MainWeatherCopyWith<_MainWeather> get copyWith => throw _privateConstructorUsedError;
}
