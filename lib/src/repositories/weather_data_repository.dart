import 'package:flutter_weather_test/src/models/weather_model.dart';
import 'package:flutter_weather_test/src/repositories/api/weather_data_api.dart';

class WeatherDataRepository {
  final WeatherDataApi _weatherApi;

  WeatherDataRepository(this._weatherApi);

  Future<WeatherModel> getWeather({
    required String lon,
    required String lat,
  }) async {
    return _weatherApi.getWeather(
      lon: lon,
      lat: lat,
    );
  }
}
