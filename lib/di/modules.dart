import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:movies_usf/data/api_service.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@module
abstract class NetworkModule {
  @singleton
  ApiService getApi() {
    final dio = Dio(
      BaseOptions(
        baseUrl: "https://www.omdbapi.com",
      ),
    );
    dio.interceptors.add(PrettyDioLogger());
    final client = ApiService(dio);
    return client;
  }
}
