import 'package:dio/dio.dart';
import 'package:flutter_weather_test/src/models/weather_model.dart';
import 'package:retrofit/retrofit.dart';

part 'weather_data_api.g.dart';

@RestApi()
abstract class WeatherDataApi {
  factory WeatherDataApi(Dio dio) = _WeatherDataApi;

  @GET(
    //TODO app api key
    'https://api.openweathermap.org/data/2.5/weather?lat={lat}&lon={lon}&appid={}',
  )
  Future<WeatherModel> getWeather({
    @Path() required String lon,
    @Path() required String lat,
  });
}
