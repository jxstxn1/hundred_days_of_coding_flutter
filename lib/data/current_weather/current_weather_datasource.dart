import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';
import 'package:hundred_days_of_coding/data/current_weather/current_weather.dart';
import 'package:hundred_days_of_coding/data/current_weather/open_weather_current_weather_datasource.dart';

/// Provides the default [WeatherDataSource] and can be overriden during testing.
final currentWeatherDataSourceProvider = Provider<CurrentWeatherDatasource>((_) {
  const apiKey = String.fromEnvironment('WEATHER_API_KEY');
  const String baseUrl = 'https://api.openweathermap.org/data/2.5/weather?q=';
  return OpenWeatherCurrentWeatherDatasource(client: Client(), apiKey: apiKey, endpoint: baseUrl);
});

abstract class CurrentWeatherDatasource {
  Future<CurrentWeather> getCurrentWeatherByCity({required String city});
  Future<CurrentWeather> getCurrentWeatherByLatLng({required double lat, required double lng});
}
