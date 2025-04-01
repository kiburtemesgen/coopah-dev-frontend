import 'package:coopah_dev_frontend/data/models/app_error.dart';
import 'package:coopah_dev_frontend/data/models/weather_response.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class WeatherService {
  final Dio _dio;

  WeatherService(@Named('apiClient') this._dio);

  Future<Either<AppError, WeatherResponse?>> getWeather() async {
    try {
      const lat = '51.51494225418024';
      const long = '-0.12363193061883422';
      final response = await _dio.get('/data/2.5/forecast?lat=$lat&lon=$long');

      // Check if response is successful
      if (response.statusCode == 200) {
        debugPrint('the result from service: ${response.data},', wrapWidth: 1000);
        final weatherResponse = WeatherResponse.fromJson(response.data);

        return Right(weatherResponse);
      } else {
        // Handle non-200 responses
        return Left(AppError(message: response.statusMessage));
      }
    } on DioException catch (_) {
      // Handle Dio-specific exceptions
      return const Left(
          AppError(code: 'NETWORK_ERROR', message: 'Network error occurred'));
    } catch (e) {
      // Handle other types of exceptions
      return const Left(AppError(
          code: 'UNKNOWN_ERROR', message: 'An unexpected error occurred'));
    }
  }
}
