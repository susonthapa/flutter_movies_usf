import 'package:dio/dio.dart';
import 'package:movies_usf/data/search_response.dart';
import 'package:retrofit/http.dart';

part 'api_service.g.dart';

@RestApi()
abstract class ApiService {
  factory ApiService(Dio dio) = _ApiService;

  @GET('/')
  Stream<SearchResponse> getMovies(
    // name of the movie that you want to search
    @Query('s') String name,
    // api key for omDB
    @Query('apiKey') String apiKey,
  );
}
