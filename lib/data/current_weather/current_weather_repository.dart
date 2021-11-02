import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hundred_days_of_coding/data/current_weather/current_weather.dart';
import 'package:hundred_days_of_coding/data/current_weather/current_weather_datasource.dart';

/// Provides [CurrentweatherRepository]
final currentWeatherRepositoryProvdider =
    Provider((ref) => CurrentWeatherRepository(datasource: ref.watch(currentWeatherDataSourceProvider)));

/// Loads and caches [CurrentWeather]
class CurrentWeatherRepository {
  CurrentWeatherRepository({required CurrentWeatherDatasource datasource}) : _datasource = datasource;
  final CurrentWeatherDatasource _datasource;

  final Map<String, CurrentWeather> _currentWeatherCache = {};

  Future<CurrentWeather> loadCurrentWeather(String city) async {
    final cached = _currentWeatherCache[city];
    if (cached != null) {
      return cached;
    }
    final weather = await _datasource.getCurrentWeatherByCity(city: city);
    _currentWeatherCache[city] = weather;
    return weather;
  }
}
