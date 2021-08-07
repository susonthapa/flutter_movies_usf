import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:movies_usf/data/api_service.dart';

@module
abstract class NetworkModule {
  @singleton
  ApiService getApi() {
    final dio = Dio(
      BaseOptions(
        baseUrl: "",
      ),
    );
    final client = ApiService(dio);
    return client;
  }
}
