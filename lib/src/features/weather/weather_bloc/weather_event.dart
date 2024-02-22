part of 'weather_bloc.dart';

@freezed
class WeatherEvent with _$WeatherEvent {
  const factory WeatherEvent.searchByCity(LocationModel location) =
      _SearchByCity;
}
