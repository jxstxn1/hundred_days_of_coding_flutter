import 'package:flutter_test/flutter_test.dart';
import 'package:hundred_days_of_coding/data/current_weather/current_weather.dart';
import 'package:hundred_days_of_coding/data/current_weather/current_weather_model.dart';

import '../../mock/mock_current_weather_datasource.dart';
import '../../mock/mock_error_handler.dart';

const testCity = 'TestCity';
void main() {
  group('Load CurrentWeather', () {
    test('Loaded Weather can be found in currentWeather', () async {
      final errorHandler = MockErrorHandler();
      final currentWeatherModel =
          CurrentWeatherModel(dataSource: MockCurrentWeatherDataSource(), errorHandler: errorHandler);
      expect(currentWeatherModel.currentWeather, isNull);
      expect(errorHandler.errors, isEmpty);
      await currentWeatherModel.loadCurrentWeather(city: testCity);
      expectedValues(currentWeatherModel.currentWeather!);
      expect(errorHandler.errors, isEmpty);
    });

    test('Load current weather results in Exception', () async {
      final errorHandler = MockErrorHandler();
      final currentWeatherModel = CurrentWeatherModel(
        dataSource: MockCurrentWeatherDataSource(hasError: true),
        errorHandler: errorHandler,
      );
      expect(currentWeatherModel.currentWeather, isNull);
      expect(errorHandler.errors, isEmpty);
      await currentWeatherModel.loadCurrentWeather(city: testCity);
      expect(currentWeatherModel.currentWeather, isNull);
      expect(errorHandler.errors, isNotEmpty);
      expect(errorHandler.errors, hasLength(1));
      expect(errorHandler.errors.last, isInstanceOf<Exception>());
    });
  });
}

void expectedValues(CurrentWeather currentWeather) {
  expect(currentWeather.mainWeather?.temp, 20.5);
  expect(currentWeather.mainWeather?.feelsLike, 19.5);
  expect(currentWeather.mainWeather?.tempMin, 19.6);
  expect(currentWeather.mainWeather?.tempMax, 21.0);
  expect(currentWeather.mainWeather?.pressure, 1023.0);
  expect(currentWeather.mainWeather?.humidity, 55.0);
  expect(currentWeather.city?.name, 'Test City');
  expect(currentWeather.cloud?.cloudiness, 5.0);
  expect(currentWeather.rain?.rainVolumeOneHour, 59.0);
  expect(currentWeather.rain?.rainVolumeThreeHours, null);
  expect(currentWeather.snow?.snowVolumeOneHour, null);
  expect(currentWeather.snow?.snowVolumeThreeHours, null);
  expect(currentWeather.sun?.sunrise, '1560343627');
  expect(currentWeather.sun?.sunset, '1560393627');
  expect(currentWeather.wind?.speed, 70);
  expect(currentWeather.wind?.deg, 350);
}
