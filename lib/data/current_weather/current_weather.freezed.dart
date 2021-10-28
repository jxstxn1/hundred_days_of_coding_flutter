// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'current_weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CurrentWeatherTearOff {
  const _$CurrentWeatherTearOff();

  _CurrentWeather call(
      {required MainWeather mainWeather,
      required City city,
      Cloud? cloud,
      Rain? rain,
      Snow? snow,
      Sun? sun,
      Wind? wind}) {
    return _CurrentWeather(
      mainWeather: mainWeather,
      city: city,
      cloud: cloud,
      rain: rain,
      snow: snow,
      sun: sun,
      wind: wind,
    );
  }
}

/// @nodoc
const $CurrentWeather = _$CurrentWeatherTearOff();

/// @nodoc
mixin _$CurrentWeather {
  MainWeather get mainWeather => throw _privateConstructorUsedError;
  City get city => throw _privateConstructorUsedError;
  Cloud? get cloud => throw _privateConstructorUsedError;
  Rain? get rain => throw _privateConstructorUsedError;
  Snow? get snow => throw _privateConstructorUsedError;
  Sun? get sun => throw _privateConstructorUsedError;
  Wind? get wind => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurrentWeatherCopyWith<CurrentWeather> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentWeatherCopyWith<$Res> {
  factory $CurrentWeatherCopyWith(CurrentWeather value, $Res Function(CurrentWeather) then) =
      _$CurrentWeatherCopyWithImpl<$Res>;
  $Res call({MainWeather mainWeather, City city, Cloud? cloud, Rain? rain, Snow? snow, Sun? sun, Wind? wind});

  $MainWeatherCopyWith<$Res> get mainWeather;
  $CityCopyWith<$Res> get city;
  $CloudCopyWith<$Res>? get cloud;
  $RainCopyWith<$Res>? get rain;
  $SnowCopyWith<$Res>? get snow;
  $SunCopyWith<$Res>? get sun;
  $WindCopyWith<$Res>? get wind;
}

/// @nodoc
class _$CurrentWeatherCopyWithImpl<$Res> implements $CurrentWeatherCopyWith<$Res> {
  _$CurrentWeatherCopyWithImpl(this._value, this._then);

  final CurrentWeather _value;
  // ignore: unused_field
  final $Res Function(CurrentWeather) _then;

  @override
  $Res call({
    Object? mainWeather = freezed,
    Object? city = freezed,
    Object? cloud = freezed,
    Object? rain = freezed,
    Object? snow = freezed,
    Object? sun = freezed,
    Object? wind = freezed,
  }) {
    return _then(_value.copyWith(
      mainWeather: mainWeather == freezed
          ? _value.mainWeather
          : mainWeather // ignore: cast_nullable_to_non_nullable
              as MainWeather,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City,
      cloud: cloud == freezed
          ? _value.cloud
          : cloud // ignore: cast_nullable_to_non_nullable
              as Cloud?,
      rain: rain == freezed
          ? _value.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as Rain?,
      snow: snow == freezed
          ? _value.snow
          : snow // ignore: cast_nullable_to_non_nullable
              as Snow?,
      sun: sun == freezed
          ? _value.sun
          : sun // ignore: cast_nullable_to_non_nullable
              as Sun?,
      wind: wind == freezed
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as Wind?,
    ));
  }

  @override
  $MainWeatherCopyWith<$Res> get mainWeather {
    return $MainWeatherCopyWith<$Res>(_value.mainWeather, (value) {
      return _then(_value.copyWith(mainWeather: value));
    });
  }

  @override
  $CityCopyWith<$Res> get city {
    return $CityCopyWith<$Res>(_value.city, (value) {
      return _then(_value.copyWith(city: value));
    });
  }

  @override
  $CloudCopyWith<$Res>? get cloud {
    if (_value.cloud == null) {
      return null;
    }

    return $CloudCopyWith<$Res>(_value.cloud!, (value) {
      return _then(_value.copyWith(cloud: value));
    });
  }

  @override
  $RainCopyWith<$Res>? get rain {
    if (_value.rain == null) {
      return null;
    }

    return $RainCopyWith<$Res>(_value.rain!, (value) {
      return _then(_value.copyWith(rain: value));
    });
  }

  @override
  $SnowCopyWith<$Res>? get snow {
    if (_value.snow == null) {
      return null;
    }

    return $SnowCopyWith<$Res>(_value.snow!, (value) {
      return _then(_value.copyWith(snow: value));
    });
  }

  @override
  $SunCopyWith<$Res>? get sun {
    if (_value.sun == null) {
      return null;
    }

    return $SunCopyWith<$Res>(_value.sun!, (value) {
      return _then(_value.copyWith(sun: value));
    });
  }

  @override
  $WindCopyWith<$Res>? get wind {
    if (_value.wind == null) {
      return null;
    }

    return $WindCopyWith<$Res>(_value.wind!, (value) {
      return _then(_value.copyWith(wind: value));
    });
  }
}

/// @nodoc
abstract class _$CurrentWeatherCopyWith<$Res> implements $CurrentWeatherCopyWith<$Res> {
  factory _$CurrentWeatherCopyWith(_CurrentWeather value, $Res Function(_CurrentWeather) then) =
      __$CurrentWeatherCopyWithImpl<$Res>;
  @override
  $Res call({MainWeather mainWeather, City city, Cloud? cloud, Rain? rain, Snow? snow, Sun? sun, Wind? wind});

  @override
  $MainWeatherCopyWith<$Res> get mainWeather;
  @override
  $CityCopyWith<$Res> get city;
  @override
  $CloudCopyWith<$Res>? get cloud;
  @override
  $RainCopyWith<$Res>? get rain;
  @override
  $SnowCopyWith<$Res>? get snow;
  @override
  $SunCopyWith<$Res>? get sun;
  @override
  $WindCopyWith<$Res>? get wind;
}

/// @nodoc
class __$CurrentWeatherCopyWithImpl<$Res> extends _$CurrentWeatherCopyWithImpl<$Res>
    implements _$CurrentWeatherCopyWith<$Res> {
  __$CurrentWeatherCopyWithImpl(_CurrentWeather _value, $Res Function(_CurrentWeather) _then)
      : super(_value, (v) => _then(v as _CurrentWeather));

  @override
  _CurrentWeather get _value => super._value as _CurrentWeather;

  @override
  $Res call({
    Object? mainWeather = freezed,
    Object? city = freezed,
    Object? cloud = freezed,
    Object? rain = freezed,
    Object? snow = freezed,
    Object? sun = freezed,
    Object? wind = freezed,
  }) {
    return _then(_CurrentWeather(
      mainWeather: mainWeather == freezed
          ? _value.mainWeather
          : mainWeather // ignore: cast_nullable_to_non_nullable
              as MainWeather,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City,
      cloud: cloud == freezed
          ? _value.cloud
          : cloud // ignore: cast_nullable_to_non_nullable
              as Cloud?,
      rain: rain == freezed
          ? _value.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as Rain?,
      snow: snow == freezed
          ? _value.snow
          : snow // ignore: cast_nullable_to_non_nullable
              as Snow?,
      sun: sun == freezed
          ? _value.sun
          : sun // ignore: cast_nullable_to_non_nullable
              as Sun?,
      wind: wind == freezed
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as Wind?,
    ));
  }
}

/// @nodoc

class _$_CurrentWeather implements _CurrentWeather {
  const _$_CurrentWeather(
      {required this.mainWeather, required this.city, this.cloud, this.rain, this.snow, this.sun, this.wind});

  @override
  final MainWeather mainWeather;
  @override
  final City city;
  @override
  final Cloud? cloud;
  @override
  final Rain? rain;
  @override
  final Snow? snow;
  @override
  final Sun? sun;
  @override
  final Wind? wind;

  @override
  String toString() {
    return 'CurrentWeather(mainWeather: $mainWeather, city: $city, cloud: $cloud, rain: $rain, snow: $snow, sun: $sun, wind: $wind)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CurrentWeather &&
            (identical(other.mainWeather, mainWeather) || other.mainWeather == mainWeather) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.cloud, cloud) || other.cloud == cloud) &&
            (identical(other.rain, rain) || other.rain == rain) &&
            (identical(other.snow, snow) || other.snow == snow) &&
            (identical(other.sun, sun) || other.sun == sun) &&
            (identical(other.wind, wind) || other.wind == wind));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mainWeather, city, cloud, rain, snow, sun, wind);

  @JsonKey(ignore: true)
  @override
  _$CurrentWeatherCopyWith<_CurrentWeather> get copyWith =>
      __$CurrentWeatherCopyWithImpl<_CurrentWeather>(this, _$identity);
}

abstract class _CurrentWeather implements CurrentWeather {
  const factory _CurrentWeather(
      {required MainWeather mainWeather,
      required City city,
      Cloud? cloud,
      Rain? rain,
      Snow? snow,
      Sun? sun,
      Wind? wind}) = _$_CurrentWeather;

  @override
  MainWeather get mainWeather;
  @override
  City get city;
  @override
  Cloud? get cloud;
  @override
  Rain? get rain;
  @override
  Snow? get snow;
  @override
  Sun? get sun;
  @override
  Wind? get wind;
  @override
  @JsonKey(ignore: true)
  _$CurrentWeatherCopyWith<_CurrentWeather> get copyWith => throw _privateConstructorUsedError;
}
