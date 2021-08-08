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
    setState((s) => HomeState());
  }

  void searchMovie(String query) {
    if (query.isEmpty) {
      return;
    }
    bag.add(repo.getMoviesFromServer(query).listen((movies) {
      movies.when(
        loading: () =>
            setState((s) => s.copyWith(contentStatus: ContentStatus.loading)),
        content: (content) =>
            setState((s) => s.copyWith(searchResult: content)),
        error: (error) => setState(
          (s) => s.copyWith(
              searchResult: [], contentStatus: ContentStatus.error(error)),
        ),
      );
    }));
  }

  @override
  void resetEffects() {}
}

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    @Default([]) List<Movie> searchResult,
    @Default(ContentStatus.loaded) ContentStatus contentStatus,
  }) = _HomeState;
}
