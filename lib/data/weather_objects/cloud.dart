import 'package:freezed_annotation/freezed_annotation.dart';

part 'cloud.freezed.dart';

@freezed
class Cloud with _$Cloud {
  const factory Cloud({
    double? cloudiness,
  }) = _Cloud;
}
