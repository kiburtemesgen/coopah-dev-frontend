import 'package:coopah_dev_frontend/data/models/app_error.dart';
import 'package:coopah_dev_frontend/data/models/weather_response.dart';
import 'package:coopah_dev_frontend/data/services/weather_service.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

/// An interface class for [WeatherRepository]
abstract class IWeatherRepository {
  Future<Either<AppError, WeatherResponse?>> getWeather();
}

/// The concrete implementation of ([IWeatherRepository]) which interacts with
/// a [WeatherService] to retrieve weather data.
@Injectable(as: IWeatherRepository)
class WeatherRepository implements IWeatherRepository {
  final WeatherService weatherService;

  WeatherRepository(
    this.weatherService,
  );
  @override
  Future<Either<AppError, WeatherResponse?>> getWeather() async {
    return weatherService.getWeather();
  }
}
