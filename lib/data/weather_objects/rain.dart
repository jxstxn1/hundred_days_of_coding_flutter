import 'package:freezed_annotation/freezed_annotation.dart';

part 'rain.freezed.dart';

@freezed
class Rain with _$Rain {
  const factory Rain({
    double? rainVolumeOneHour,
    double? rainVolumeThreeHours,
  }) = _Rain;
}
