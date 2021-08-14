import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:movies_usf/data/movies_repository.dart';
import 'package:movies_usf/domain/content_status.dart';
import 'package:movies_usf/domain/movie.dart';
import 'package:movies_usf/presentation/common/navigation.dart';

part 'home_vm.freezed.dart';

@injectable
class HomeViewModel extends BaseVM<HomeState> {
  final MoviesRepository repo;

  HomeViewModel(this.repo) : super(HomeState()) {
    // create default state
    setState((s) => HomeState());
  }

  // function to search query
  void searchMovie(String query) {
    if (query.isEmpty) {
      return;
    }
    bag.add(repo.getMoviesFromServer(query).listen((movies) {
      movies.when(
        // loading set our content status
        loading: () =>
            setState((s) => s.copyWith(contentStatus: ContentStatus.loading)),
        // we have content set to our state
        content: (content) => setState((s) => s.copyWith(
              searchResult: content,
              contentStatus: ContentStatus.loaded,
            )),
        // we have error, handle it
        error: (error) => setState(
          (s) => s.copyWith(
              searchResult: [], contentStatus: ContentStatus.error(error)),
        ),
      );
    }));
  }

  // add movie to our history list
  void addMovieToHistory(int position) {
    final it = state;
    var currentMovie = it.searchResult[position];
    var isNotInHistory =
        it.history.firstWhereOrNull((movie) => movie.id == currentMovie.id) ==
            null;
    // only add the movie if it's not already in our history
    if (isNotInHistory) {
      final newHistory = List<Movie>.from(it.history);
      newHistory.add(currentMovie);
      setState((s) => s.copyWith(history: newHistory));
    }
  }

  void loadMovieDetails(int position) {
    final it = state;
    setState(
      (s) => s.copyWith(
        nav: HomeNavArgs(type: HomeNav.details, args: it.searchResult[position]),
      ),
    );
  }

  @override
  void resetEffects() {
    // reset our navigation so that we don't trigger it by accident
    setStateOnly((s) => s.copyWith(nav: HomeNavArgs()));
  }
}

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    @Default([]) List<Movie> searchResult,
    @Default(ContentStatus.loaded) ContentStatus contentStatus,
    @Default([]) List<Movie> history,
    @Default(HomeNavArgs()) HomeNavArgs nav,
  }) = _HomeState;
}

@freezed
class HomeNavArgs with _$HomeNavArgs {
  const factory HomeNavArgs({
    @Default(HomeNav.none) HomeNav type,
    Object? args,
  }) = _HomeNavArgs;
}

enum HomeNav { none, details }
