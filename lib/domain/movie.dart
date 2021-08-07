import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'movie.freezed.dart';

@freezed
class Movie with _$Movie {
  factory Movie({
    required String id,
    required String title,
    required String year,
    required String type,
    required String image,
  }) = _Movie;
}
