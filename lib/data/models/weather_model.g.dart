// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherModelImpl _$$WeatherModelImplFromJson(Map<String, dynamic> json) =>
    _$WeatherModelImpl(
      main: json['main'] == null
          ? null
          : MainWeather.fromJson(json['main'] as Map<String, dynamic>),
      weather: (json['weather'] as List<dynamic>?)
              ?.map((e) => WeatherDetail.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$WeatherModelImplToJson(_$WeatherModelImpl instance) =>
    <String, dynamic>{
      'main': instance.main?.toJson(),
      'weather': instance.weather.map((e) => e.toJson()).toList(),
    };

_$MainWeatherImpl _$$MainWeatherImplFromJson(Map<String, dynamic> json) =>
    _$MainWeatherImpl(
      temp: (json['temp'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$MainWeatherImplToJson(_$MainWeatherImpl instance) =>
    <String, dynamic>{
      'temp': instance.temp,
    };

_$WeatherDetailImpl _$$WeatherDetailImplFromJson(Map<String, dynamic> json) =>
    _$WeatherDetailImpl(
      main: json['main'] as String?,
      description: json['description'] as String?,
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$$WeatherDetailImplToJson(_$WeatherDetailImpl instance) =>
    <String, dynamic>{
      'main': instance.main,
      'description': instance.description,
      'icon': instance.icon,
    };
