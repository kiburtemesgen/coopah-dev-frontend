import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'weather_model.freezed.dart';
part 'weather_model.g.dart';

@freezed
class WeatherModel with _$WeatherModel {
  const factory WeatherModel({
    MainWeather? main,
    @Default([]) List<WeatherDetail> weather,
  }) = _WeatherModel;

  factory WeatherModel.fromJson(Map<String, Object?> json) =>
      _$WeatherModelFromJson(json);
}

@freezed
class MainWeather with _$MainWeather {
  const factory MainWeather({
    double? temp,
  }) = _MainWeather;

  factory MainWeather.fromJson(Map<String, Object?> json) =>
      _$MainWeatherFromJson(json);
}

@freezed
class WeatherDetail with _$WeatherDetail {
  const factory WeatherDetail({
    String? main,
    String? description,
    String? icon,
  }) = _WeatherDetail;

  factory WeatherDetail.fromJson(Map<String, Object?> json) =>
      _$WeatherDetailFromJson(json);
}

