import 'package:freezed_annotation/freezed_annotation.dart';

part 'snow.freezed.dart';

@freezed
class Snow with _$Snow {
  const factory Snow({
    double? snowVolumeOneHour,
    double? snowVolumeThreeHours,
  }) = _Snow;
}
