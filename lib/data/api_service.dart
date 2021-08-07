import 'package:dio/dio.dart';
import 'package:movies_usf/data/search_response.dart';
import 'package:retrofit/http.dart';

part 'api_service.g.dart';

@RestApi()
abstract class ApiService {
  factory ApiService(Dio dio) = _ApiService;

  @GET('/')
  Stream<SearchResponse> getMovies(
    @Query('') String name,
    @Query('apiKey') String apiKey,
  );
}
