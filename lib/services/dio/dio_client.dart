import 'package:dio/dio.dart';
import 'package:tv_series/services/dio/logging.dart';

class DioClient {
  DioClient();

  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.tvmaze.com',
      connectTimeout: 1000,
      receiveTimeout: 1000,
    ),
  )..interceptors.add(Logging());

  Future<Response> get(String path,
      {Map<String, dynamic>? queryParameters}) async {
    return _dio.get(
      path,
      queryParameters: queryParameters,
    );
  }
}
