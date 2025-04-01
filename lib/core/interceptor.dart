import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@singleton
class AppInterceptor extends QueuedInterceptorsWrapper {
  final Dio dio;

  AppInterceptor(
    this.dio,
  );

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // Add `apiKey` parameter to query parameters
    const apiKey = 'd39d56c77e53ff78e679b0861e2b1daa';
    final updatedQueryParameters = {
      ...options.queryParameters,
      'appid': apiKey,
    };

    options = options.copyWith(queryParameters: updatedQueryParameters);
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    super.onResponse(response, handler);
    return;
  }

  @override
  Future onError(DioException err, ErrorInterceptorHandler handler) async {
    super.onError(err, handler);
  }
}
