part of 'weather_bloc.dart';

@freezed
class WeatherState with _$WeatherState {
  factory WeatherState(
          {final WeatherResponse? weatherResponse,
          @Default(false) final bool isLoading,
          final AppError? error,
          @Default(TemperatureUnit.celsius) final TemperatureUnit unit}) =
      _WeatherState;
}
