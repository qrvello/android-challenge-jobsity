import 'package:dio/dio.dart';
import 'package:tv_series/helpers/logging.dart';

class DioClient {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.tvmaze.com',
      connectTimeout: 5000,
      receiveTimeout: 3000,
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
