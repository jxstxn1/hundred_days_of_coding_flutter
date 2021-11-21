import 'dart:async';

import 'package:hundred_days_of_coding/data/current_weather/current_weather.dart';
import 'package:hundred_days_of_coding/data/current_weather/current_weather_datasource.dart';
import 'package:hundred_days_of_coding/data/weather_objects/city.dart';
import 'package:hundred_days_of_coding/data/weather_objects/cloud.dart';
import 'package:hundred_days_of_coding/data/weather_objects/main_weather.dart';
import 'package:hundred_days_of_coding/data/weather_objects/rain.dart';
import 'package:hundred_days_of_coding/data/weather_objects/sun.dart';
import 'package:hundred_days_of_coding/data/weather_objects/wind.dart';

class MockCurrentWeatherDataSource implements CurrentWeatherDatasource {
  MockCurrentWeatherDataSource({this.hasError = false, this.autoComplete = true});

  bool hasError;

  bool autoComplete;

  Completer<CurrentWeather>? _currentWeatherCompleter;
  @override
  Future<CurrentWeather> getCurrentWeatherByCity({required String city}) async {
    if (hasError) throw Exception('🤔');
    if (autoComplete) {
      return mockCurrentWeather;
    }
    _currentWeatherCompleter ??= Completer();
    return _currentWeatherCompleter!.future;
  }

  @override
  Future<CurrentWeather> getCurrentWeatherByLatLng({required double lat, required double lng}) async {
    if (hasError) throw Exception('🤔');
    if (autoComplete) {
      return mockCurrentWeather;
    }
    _currentWeatherCompleter ??= Completer();
    return _currentWeatherCompleter!.future;
  }
}

const CurrentWeather mockCurrentWeather = CurrentWeather(
  mainWeather: MainWeather(
    temp: 20.5,
    feelsLike: 19.5,
    tempMin: 19.6,
    tempMax: 21,
    pressure: 1023,
    humidity: 55.0,
  ),
  cloud: Cloud(
    cloudiness: 5,
  ),
  rain: Rain(
    rainVolumeOneHour: 59.0,
  ),
  wind: Wind(
    deg: 350,
    speed: 70,
  ),
  city: City(name: 'Test City'),
  sun: Sun(
    sunrise: '1560343627',
    sunset: '1560393627',
  ),
);
