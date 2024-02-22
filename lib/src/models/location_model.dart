import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_model.freezed.dart';

@freezed
class LocationModel with _$LocationModel {
  const factory LocationModel({
    required String city,
    required String lat,
    required String lon,
  }) = _LocationModel;
}

extension LocationModelExtension on LocationModel {
  bool get isError => city == 'Error';
}
