part of 'weather_bloc.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState({
    @Default(LoadingState.normal) LoadingState loadingState,
    @Default('') String error,
    WeatherModel? weather,
    LocationModel? location,
  }) = _State;
}
