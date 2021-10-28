import 'package:freezed_annotation/freezed_annotation.dart';

part 'sun.freezed.dart';

@freezed
class Sun with _$Sun {
  const factory Sun({
    String? sunrise,
    String? sunset,
  }) = _Sun;
}
