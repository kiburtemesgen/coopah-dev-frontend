// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../data/repositories/weather_repository.dart' as _i592;
import '../data/services/weather_service.dart' as _i275;
import '../presentation/weather/weather_bloc/weather_bloc.dart' as _i224;
import 'interceptor.dart' as _i286;
import 'network_module.dart' as _i567;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final networkModule = _$NetworkModule();
    gh.singleton<_i361.Dio>(() => networkModule.dioForInterceptor);
    gh.lazySingleton<_i361.Dio>(
      () => networkModule.dio,
      instanceName: 'apiClient',
    );
    gh.factory<_i275.WeatherService>(
        () => _i275.WeatherService(gh<_i361.Dio>(instanceName: 'apiClient')));
    gh.singleton<_i286.AppInterceptor>(
        () => _i286.AppInterceptor(gh<_i361.Dio>()));
    gh.factory<_i592.IWeatherRepository>(
        () => _i592.WeatherRepository(gh<_i275.WeatherService>()));
    gh.factory<_i224.WeatherBloc>(
        () => _i224.WeatherBloc(gh<_i592.IWeatherRepository>()));
    return this;
  }
}

class _$NetworkModule extends _i567.NetworkModule {}
