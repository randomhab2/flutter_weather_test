import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather_test/src/enums/loading_state.dart';
import 'package:flutter_weather_test/src/models/location_model.dart';
import 'package:flutter_weather_test/src/models/weather_model.dart';
import 'package:flutter_weather_test/src/repositories/weather_data_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_event.dart';
part 'weather_state.dart';
part 'weather_bloc.freezed.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc(this._weatherDataRepository) : super(const WeatherState()) {
    on<_SearchByCity>(_onSearchByCity);
  }

  final WeatherDataRepository _weatherDataRepository;

  void _onSearchByCity(
    _SearchByCity event,
    Emitter<WeatherState> emit,
  ) async {
    emit(
      state.copyWith(
        loadingState: LoadingState.loading,
        error: '',
        weather: null,
        location: null,
      ),
    );

    try {
      final result = await _weatherDataRepository.getWeather(
        lat: event.location.lat,
        lon: event.location.lon,
      );
      emit(
        state.copyWith(
          loadingState: LoadingState.success,
          error: '',
          weather: result,
          location: event.location,
        ),
      );
    } catch (e) {
      emit(state.copyWith(
        loadingState: LoadingState.normal,
        error: e.toString(),
        weather: null,
        location: null,
      ));
    }
  }
}
