import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'weather_model.dart';

part 'weather_response.freezed.dart';
part 'weather_response.g.dart';

@freezed
class WeatherResponse with _$WeatherResponse {
  const factory WeatherResponse({
    String? cod,
    int? message,
    City? city,
    required List<WeatherModel> list,


  }) = _WeatherResponse;

  factory WeatherResponse.fromJson(Map<String, Object?> json) =>
      _$WeatherResponseFromJson(json);
}


@freezed
class City with _$City {
  factory City({final String? name}) = _City;

  factory City.fromJson(Map<String, dynamic> json) =>
      _$CityFromJson(json);
}
