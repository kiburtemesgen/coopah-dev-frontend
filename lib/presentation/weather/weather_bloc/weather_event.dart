part of 'weather_bloc.dart';

@freezed
class WeatherEvent with _$WeatherEvent {
  factory WeatherEvent.getWeather() = GetWeather;
  factory WeatherEvent.switchTemperatureUnit() = SwitchTemperatureUnit;
}
