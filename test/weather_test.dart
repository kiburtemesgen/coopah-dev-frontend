import 'package:bloc_test/bloc_test.dart';
import 'package:coopah_dev_frontend/data/models/app_error.dart';
import 'package:coopah_dev_frontend/data/models/weather_model.dart';
import 'package:coopah_dev_frontend/data/models/weather_response.dart';
import 'package:coopah_dev_frontend/data/repositories/weather_repository.dart';
import 'package:coopah_dev_frontend/data/services/weather_service.dart';
import 'package:coopah_dev_frontend/presentation/weather/weather_bloc/weather_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'weather_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<IWeatherRepository>(),
  MockSpec<WeatherService>(),
  MockSpec<Dio>(),
])
void main() {
  late MockIWeatherRepository mockWeatherRepository;
  late MockWeatherService mockWeatherService;
  late MockDio mockDio;
  late WeatherBloc weatherBloc;
  late WeatherRepository weatherRepository;
  late WeatherService weatherService;

  const tAppError =
      AppError(code: 'NETWORK_ERROR', message: 'Network error occurred');
  final tWeatherResponse = WeatherResponse(
    cod: '200',
    message: 0,
    city: City(name: 'Test City'),
    list: [
      const WeatherModel(
        main: MainWeather(temp: 290.0),
        weather: [
          WeatherDetail(main: 'Sunny', description: 'A little sun', icon: '02d')
        ],
      ),
    ],
  );

  setUp(() {
    mockWeatherRepository = MockIWeatherRepository();
    mockWeatherService = MockWeatherService();
    mockDio = MockDio();
    weatherBloc = WeatherBloc(mockWeatherRepository);
    weatherRepository = WeatherRepository(mockWeatherService);
    weatherService = WeatherService(mockDio);
  });

  tearDown(() => weatherBloc.close());

  group('WeatherBloc', () {
    blocTest<WeatherBloc, WeatherState>(
      'emits [loading, success] when GetWeather is successful',
      build: () {
        when(mockWeatherRepository.getWeather())
            .thenAnswer((_) async => Right(tWeatherResponse));
        return weatherBloc;
      },
      act: (bloc) => bloc.add(WeatherEvent.getWeather()),
      expect: () => [
        WeatherState(isLoading: true),
        WeatherState(isLoading: false, weatherResponse: tWeatherResponse),
      ],
      verify: (_) => verify(mockWeatherRepository.getWeather()).called(1),
    );

    blocTest<WeatherBloc, WeatherState>(
      'emits [loading, failure] when GetWeather fails',
      build: () {
        when(mockWeatherRepository.getWeather())
            .thenAnswer((_) async => const Left(tAppError));
        return weatherBloc;
      },
      act: (bloc) => bloc.add(WeatherEvent.getWeather()),
      expect: () => [
        WeatherState(isLoading: true),
        WeatherState(isLoading: false, error: tAppError),
      ],
      verify: (_) => verify(mockWeatherRepository.getWeather()).called(1),
    );
  });

  group('WeatherRepository', () {
    test('returns Right(WeatherResponse) on success', () async {
      when(mockWeatherService.getWeather())
          .thenAnswer((_) async => Right(tWeatherResponse));

      final result = await weatherRepository.getWeather();

      expect(result, equals(Right(tWeatherResponse)));
      verify(mockWeatherService.getWeather()).called(1);
      verifyNoMoreInteractions(mockWeatherService);
    });

    test('returns Left(AppError) on failure', () async {
      when(mockWeatherService.getWeather())
          .thenAnswer((_) async => const Left(tAppError));

      final result = await weatherRepository.getWeather();

      expect(result, equals(const Left(tAppError)));
      verify(mockWeatherService.getWeather()).called(1);
      verifyNoMoreInteractions(mockWeatherService);
    });
  });

  group('WeatherService', () {
    test('returns Right(WeatherResponse) on successful API call', () async {
      final response = Response(
        requestOptions: RequestOptions(path: '/data/2.5/forecast'),
        data: {
          'cod': '200',
          'message': 0,
          'city': {'name': 'Test City'},
          'list': [
            {
              'main': {'temp': 290.0},
              'weather': [
                {'main': 'Sunny', 'description': 'A little sun', 'icon': '02d'}
              ],
            }
          ],
        },
        statusCode: 200,
      );
      when(mockDio.get(any)).thenAnswer((_) async => response);

      final result = await weatherService.getWeather();

      expect(result, isA<Right>());
      result.fold(
        (l) => fail('Expected Right, got Left'),
        (r) {
          expect(r?.cod, '200');
          expect(r?.list.first.main?.temp, 290.0);
          expect(r?.city?.name, 'Test City');
        },
      );
      verify(mockDio.get(any)).called(1);
      verifyNoMoreInteractions(mockDio);
    });

    test('returns Left(AppError) on API failure', () async {
      when(mockDio.get(any)).thenThrow(DioException(
          requestOptions: RequestOptions(path: '/data/2.5/forecast')));

      final result = await weatherService.getWeather();

      expect(result, isA<Left>());
      result.fold(
        (l) {
          expect(l, isA<AppError>());
          expect(l.message, equals('Network error occurred'));
        },
        (r) => fail('Expected Left, got Right'),
      );
      verify(mockDio.get(any)).called(1);
      verifyNoMoreInteractions(mockDio);
    });
  });
}
