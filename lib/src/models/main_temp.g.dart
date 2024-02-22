// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_temp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MainTempImpl _$$MainTempImplFromJson(Map<String, dynamic> json) =>
    _$MainTempImpl(
      temp: (json['temp'] as num?)?.toDouble(),
      feelsLike: (json['feels_like'] as num?)?.toDouble(),
      tempMin: (json['temp_min'] as num?)?.toDouble(),
      tempMax: (json['temp_max'] as num?)?.toDouble(),
      pressure: (json['pressure'] as num?)?.toDouble(),
      humidity: (json['humidity'] as num?)?.toDouble(),
      seaLevel: (json['sea_level'] as num?)?.toDouble(),
      groundLevel: (json['grnd_level'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$MainTempImplToJson(_$MainTempImpl instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'feels_like': instance.feelsLike,
      'temp_min': instance.tempMin,
      'temp_max': instance.tempMax,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'sea_level': instance.seaLevel,
      'grnd_level': instance.groundLevel,
    };
