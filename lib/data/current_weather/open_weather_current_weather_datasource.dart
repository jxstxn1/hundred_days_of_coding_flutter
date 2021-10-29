// Fetches CurrentWeather from the OpenWeatherAPI endpoint
import 'dart:convert';

import 'package:deep_pick/deep_pick.dart';
import 'package:http/http.dart' as http;
import 'package:hundred_days_of_coding/data/current_weather/current_weather.dart';
import 'package:hundred_days_of_coding/data/current_weather/current_weather_datasource.dart';
import 'package:hundred_days_of_coding/data/weather_objects/city.dart';
import 'package:hundred_days_of_coding/data/weather_objects/cloud.dart';
import 'package:hundred_days_of_coding/data/weather_objects/main_weather.dart';
import 'package:hundred_days_of_coding/data/weather_objects/rain.dart';
import 'package:hundred_days_of_coding/data/weather_objects/snow.dart';
import 'package:hundred_days_of_coding/data/weather_objects/sun.dart';
import 'package:hundred_days_of_coding/data/weather_objects/wind.dart';

class OpenWeatherCurrentWeatherDatasource implements CurrentWeatherDatasource {
  const OpenWeatherCurrentWeatherDatasource({required this.client, required this.apiKey, required this.endpoint});

  final http.Client client;
  final String apiKey;
  final String endpoint;

  @override
  Future<CurrentWeather> getCurrentWeatherByCity({required String city}) async {
    final Uri uri = Uri.parse('endpoint$city&appid=$endpoint');
    final response = await client.get(uri);
    if (response.statusCode == 200) {
      final responseBody = json.decode(utf8.decode(response.bodyBytes));
      return pick(responseBody).letOrThrow(_pickCurrentWeather);
    }
    throw Exception('Unexpected status code code ${response.statusCode}');
  }

  @override
  Future<CurrentWeather> getCurrentWeatherByLatLng({required double lat, required double lng}) {
    // TODO: implement getCurrentWeatherByLatLng
    throw UnimplementedError();
  }
}

CurrentWeather _pickCurrentWeather(RequiredPick pick) {
  return CurrentWeather(
    city: City(name: pick('city').asStringOrNull() ?? ''),
    mainWeather: MainWeather(
      temp: pick('main', 'temp').asDoubleOrThrow(),
      feelsLike: pick('main', 'feels_like').asDoubleOrThrow(),
      tempMin: pick('main', 'temp_min').asDoubleOrThrow(),
      tempMax: pick('main', 'temp_max').asDoubleOrThrow(),
      pressure: pick('main', 'pressure').asDoubleOrThrow(),
      humidity: pick('main', 'humidity').asDoubleOrThrow(),
    ),
    cloud: Cloud(
      cloudiness: pick('clouds', 'all').asDoubleOrNull(),
    ),
    rain: Rain(
      rainVolumeOneHour: pick('rain', '1h').asDoubleOrNull(),
      rainVolumeThreeHours: pick('rain', '3h').asDoubleOrNull(),
    ),
    snow: Snow(
      snowVolumeOneHour: pick('snow', '1h').asDoubleOrNull(),
      snowVolumeThreeHours: pick('snow', '3h').asDoubleOrNull(),
    ),
    sun: Sun(
      sunrise: pick('sys', 'sunrise').asStringOrNull(),
      sunset: pick('sys', 'sunset').asStringOrNull(),
    ),
    wind: Wind(
      speed: pick('wind', 'speed').asDoubleOrNull(),
      deg: pick('wind', 'deg').asDoubleOrNull(),
    ),
  );
}
