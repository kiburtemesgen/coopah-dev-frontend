// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherResponseImpl _$$WeatherResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$WeatherResponseImpl(
      cod: json['cod'] as String?,
      message: json['message'] as int?,
      city: json['city'] == null
          ? null
          : City.fromJson(json['city'] as Map<String, dynamic>),
      list: (json['list'] as List<dynamic>)
          .map((e) => WeatherModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WeatherResponseImplToJson(
        _$WeatherResponseImpl instance) =>
    <String, dynamic>{
      'cod': instance.cod,
      'message': instance.message,
      'city': instance.city?.toJson(),
      'list': instance.list.map((e) => e.toJson()).toList(),
    };

_$CityImpl _$$CityImplFromJson(Map<String, dynamic> json) => _$CityImpl(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$CityImplToJson(_$CityImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
