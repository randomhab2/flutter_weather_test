// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_temp.freezed.dart';
part 'main_temp.g.dart';

@freezed
class MainTemp with _$MainTemp {
  const factory MainTemp({
    double? temp,
    @JsonKey(name: 'feels_like') double? feelsLike,
    @JsonKey(name: 'temp_min') double? tempMin,
    @JsonKey(name: 'temp_max') double? tempMax,
    double? pressure,
    double? humidity,
    @JsonKey(name: 'sea_level') double? seaLevel,
    @JsonKey(name: 'grnd_level') double? groundLevel,
  }) = _MainTemp;

  factory MainTemp.fromJson(Map<String, dynamic> json) =>
      _$MainTempFromJson(json);
}
