import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hundred_days_of_coding/data/weather_objects/city.dart';
import 'package:hundred_days_of_coding/data/weather_objects/cloud.dart';
import 'package:hundred_days_of_coding/data/weather_objects/main_weather.dart';
import 'package:hundred_days_of_coding/data/weather_objects/rain.dart';
import 'package:hundred_days_of_coding/data/weather_objects/snow.dart';
import 'package:hundred_days_of_coding/data/weather_objects/sun.dart';
import 'package:hundred_days_of_coding/data/weather_objects/wind.dart';

part 'current_weather.freezed.dart';

@freezed
class CurrentWeather with _$CurrentWeather {
  const factory CurrentWeather({
    MainWeather? mainWeather,
    City? city,
    Cloud? cloud,
    Rain? rain,
    Snow? snow,
    Sun? sun,
    Wind? wind,
  }) = _CurrentWeather;
}
