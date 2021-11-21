import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hundred_days_of_coding/core/error_handler.dart';
import 'package:hundred_days_of_coding/data/current_weather/current_weather.dart';
import 'package:hundred_days_of_coding/data/current_weather/current_weather_datasource.dart';
import 'package:hundred_days_of_coding/main.dart';

///Provides [CurrentWeatherModel].
final currentWeatherModelProvider = ChangeNotifierProvider(
  (ref) => CurrentWeatherModel(
    dataSource: ref.read(currentWeatherDataSourceProvider),
    errorHandler: ErrorHandler(scaffoldMessengerState: ref.read(scaffoldMessengerKeyProvider).currentState),
  ),
);

/// Handles parsing of CurrentWeather from the API
class CurrentWeatherModel with ChangeNotifier {
  CurrentWeatherModel({
    required CurrentWeatherDatasource dataSource,
    required ErrorHandler errorHandler,
  })  : _dataSource = dataSource,
        _errorHandler = errorHandler;

  final CurrentWeatherDatasource _dataSource;
  final ErrorHandler _errorHandler;
  bool _isCurrentWeatherLoaded = false;
  CurrentWeather? _currentWeather;

  bool get isCurrentWeatherLoaded => _isCurrentWeatherLoaded;
  CurrentWeather? get currentWeather => _currentWeather;

  Future<void> loadCurrentWeather({required String city}) async {
    try {
      _currentWeather = await _dataSource.getCurrentWeatherByCity(city: city).timeout(const Duration(seconds: 30));
    } catch (e) {
      _errorHandler.showErrorSnackbar('An Error occured while loading the current weather', e);
    }
    _isCurrentWeatherLoaded = true;
    notifyListeners();
  }
}
