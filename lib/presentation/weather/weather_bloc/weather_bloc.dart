import 'package:bloc/bloc.dart';
import 'package:coopah_dev_frontend/core/enum/temperature_unit.dart';
import 'package:coopah_dev_frontend/data/models/app_error.dart';
import 'package:coopah_dev_frontend/data/models/weather_response.dart';
import 'package:coopah_dev_frontend/data/repositories/weather_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'weather_event.dart';
part 'weather_state.dart';
part 'weather_bloc.freezed.dart';

@injectable
class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final IWeatherRepository weatherRepository;

  WeatherBloc(this.weatherRepository) : super(WeatherState()) {
    on<GetWeather>(_onGetWeather);
    on<SwitchTemperatureUnit>(_onSwitchTemperatureUnit);
  }

  /// Emits a loading state, calls the [weatherRepository] to fetch weather data,
  /// and then emits either a success state with the fetched data or an error state
  /// if the fetch fails.
  Future<void> _onGetWeather(
      GetWeather event, Emitter<WeatherState> emit) async {
    emit(state.copyWith(isLoading: true, error: null));

    final response = await weatherRepository.getWeather();
    response.fold((error) {
      emit(state.copyWith(isLoading: false, error: error));
    }, (result) {
      emit(state.copyWith(isLoading: false, weatherResponse: result));
    });
  }

  /// Toggles the current temperature unit in the state between Celsius and Fahrenheit.
  void _onSwitchTemperatureUnit(
      SwitchTemperatureUnit event, Emitter<WeatherState> emit) {
    var unit = state.unit;
    unit = unit == TemperatureUnit.celsius
        ? TemperatureUnit.fahrenheit
        : TemperatureUnit.celsius;

    emit(state.copyWith(unit: unit));
  }
}
