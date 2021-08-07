import 'package:fimber/fimber.dart';
import 'package:flutter/rendering.dart';
import 'package:injectable/injectable.dart';
import 'package:movies_usf/data/api_service.dart';
import 'package:movies_usf/data/search_response.dart';
import 'package:movies_usf/domain/lce.dart';
import 'package:movies_usf/domain/movie.dart';
import 'package:rxdart/rxdart.dart';

@singleton
class MoviesRepository {
  final ApiService api;

  MoviesRepository(this.api);

  Stream<Lce<List<Movie>>> getMoviesFromServer(String query) {
    return api.getMovies(query, "").map<Lce<List<Movie>>>((response) {
      if (response.response == "True") {
        final movies = _convertSearchResponse(response.movies);
        return Lce.content(movies);
      } else {
        return Lce.error(response.error);
      }
    }).onErrorReturnWith((error, stackTrace) {
      Fimber.e(error.toString());
      return Lce.error(error.toString());
    }).startWith(Lce.loading());
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
