import 'package:fimber/fimber.dart';
import 'package:flutter/rendering.dart';
import 'package:injectable/injectable.dart';
import 'package:movies_usf/data/api_service.dart';
import 'package:movies_usf/data/search_response.dart';
import 'package:movies_usf/domain/lce.dart';
import 'package:movies_usf/domain/movie.dart';
import 'package:rxdart/rxdart.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

@singleton
class MoviesRepository {
  final ApiService api;

  MoviesRepository(this.api);

  Stream<Lce<List<Movie>>> getMoviesFromServer(String query) {
    return api
        .getMovies(query, dotenv.env['API_KEY'] ?? '',) // store api key in secure location
        .map<Lce<List<Movie>>>((response) {
      if (response.response == "True") {
        // convert data layer response to our domain layer model
        final movies = _convertSearchResponse(response.movies);
        return Lce.content(movies);
      } else {
        // return error
        return Lce.error(response.error);
      }
    }).onErrorReturnWith((error, stackTrace) {
      // handle any network layer error
      Fimber.e(error.toString());
      return Lce.error(error.toString());
    }).startWith(Lce.loading()); // indicate that we are currently loading data
  }

  List<Movie> _convertSearchResponse(List<Search> response) {
    return response
        .map((it) => Movie(
              id: it.id,
              title: it.title,
              year: it.year,
              type: it.type,
              image: it.image,
            ))
        .toList();
  }
}
