import 'package:coopah_dev_frontend/core/interceptor.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class NetworkModule {
  // Singleton for Dio without interceptor
  @singleton
  Dio get dioForInterceptor => Dio(
        BaseOptions(
          baseUrl: 'https://api.openweathermap.org/',
        ),
      );

  // Singleton for Dio with interceptor
  @Named('apiClient')
  @lazySingleton
  Dio get dio => Dio(
        BaseOptions(
          baseUrl: 'https://api.openweathermap.org/',
        ),
      )..interceptors.add(
          AppInterceptor(dioForInterceptor),
        );
}
