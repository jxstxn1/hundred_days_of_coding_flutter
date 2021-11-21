import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:hundred_days_of_coding/data/current_weather/current_weather.dart';
import 'package:hundred_days_of_coding/data/current_weather/open_weather_current_weather_datasource.dart';

void main() {
  test('Parsing of the response for [getCurrentWeatherByCity]', () async {
    final OpenWeatherCurrentWeatherDatasource datasource =
        OpenWeatherCurrentWeatherDatasource(client: FakeClient(), apiKey: 'testKey', endpoint: '');
    final CurrentWeather currentWeather = await datasource.getCurrentWeatherByCity(city: 'Test City');
    expectedValues(currentWeather);
  });

  test('Parsing of the response for [getCurrentWeatherByLatLng]', () async {
    final OpenWeatherCurrentWeatherDatasource datasource =
        OpenWeatherCurrentWeatherDatasource(client: FakeClient(), apiKey: 'testKey', endpoint: '');
    final CurrentWeather currentWeather = await datasource.getCurrentWeatherByLatLng(lat: 3445.43, lng: 342.32);
    expectedValues(currentWeather);
  });
}

class FakeClient extends Fake implements http.Client {
  @override
  Future<http.Response> get(Uri url, {Map<String, String>? headers}) async {
    return http.Response.bytes(utf8.encode(json.encode(_successJson)), 200);
  }

  static const Map _successJson = {
    "coord": {
      "lon": -122.08,
      "lat": 37.39,
    },
    "weather": [
      {
        "id": 800,
        "main": "Clear",
        "description": "clear sky",
        "icon": "01d",
      }
    ],
    "base": "stations",
    "main": {
      "temp": 20.5,
      "feels_like": 19.5,
      "temp_min": 19.6,
      "temp_max": 21.0,
      "pressure": 1023,
      "humidity": 55,
    },
    "clouds": {
      "all": 55.5,
    },
    "rain": {
      "1h": 59.0,
    },
    "visibility": 16093,
    "wind": {
      "speed": 70,
      "deg": 350,
    },
    "dt": 1560350645,
    "sys": {
      "type": 1,
      "id": 5122,
      "message": 0.0139,
      "country": "US",
      "sunrise": 1560343627,
      "sunset": 1560396563,
    },
    "timezone": -25200,
    "id": 420006353,
    "name": "Test City",
    "cod": 200
  };
}

void expectedValues(CurrentWeather currentWeather) {
  expect(currentWeather.mainWeather?.temp, 20.5);
  expect(currentWeather.mainWeather?.feelsLike, 19.5);
  expect(currentWeather.mainWeather?.tempMin, 19.6);
  expect(currentWeather.mainWeather?.tempMax, 21.0);
  expect(currentWeather.mainWeather?.pressure, 1023.0);
  expect(currentWeather.mainWeather?.humidity, 55.0);
  expect(currentWeather.city?.name, 'Test City');
  expect(currentWeather.cloud?.cloudiness, 55.5);
  expect(currentWeather.rain?.rainVolumeOneHour, 59.0);
  expect(currentWeather.rain?.rainVolumeThreeHours, null);
  expect(currentWeather.snow?.snowVolumeOneHour, null);
  expect(currentWeather.snow?.snowVolumeThreeHours, null);
  expect(currentWeather.sun?.sunrise, '1560343627');
  expect(currentWeather.sun?.sunset, '1560396563');
  expect(currentWeather.wind?.speed, 70);
  expect(currentWeather.wind?.deg, 350);
}
