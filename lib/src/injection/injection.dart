import 'package:dio/dio.dart';
import 'package:flutter_weather_test/src/features/weather/weather_bloc/weather_bloc.dart';
import 'package:flutter_weather_test/src/repositories/api/weather_data_api.dart';
import 'package:flutter_weather_test/src/repositories/weather_data_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injection.config.dart';

GetIt getIt = GetIt.instance;

@InjectableInit(preferRelativeImports: false)
void setup() => getIt.init();

void configureDependencies() {
  getIt.registerFactory<Dio>(() => Dio());
  getIt.registerFactory<WeatherDataApi>(() => WeatherDataApi(getIt<Dio>()));
  getIt.registerFactory<WeatherDataRepository>(
      () => WeatherDataRepository(getIt<WeatherDataApi>()));
  getIt.registerFactory<WeatherBloc>(
      () => WeatherBloc(getIt<WeatherDataRepository>()));
}
