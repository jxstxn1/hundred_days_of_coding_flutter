import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_weather.freezed.dart';

@freezed
class MainWeather with _$MainWeather {
  const factory MainWeather({
    required double temp,
    required double feelsLike,
    required double tempMin,
    required double tempMax,
    required double pressure,
    required double humidity,
  }) = _MainWeather;
}
