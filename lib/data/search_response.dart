import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'search_response.freezed.dart';
part 'search_response.g.dart';

@freezed
class SearchResponse with _$SearchResponse {
  factory SearchResponse({
    @JsonKey(name: 'Response')
    required String response,
    @JsonKey(name: 'Search')
    required List<_Search> movies,
    @JsonKey(name: 'Error')
    String? error,
  }) = _SearchResponse;

  factory SearchResponse.fromJson(Map<String, dynamic> json) => _$SearchResponseFromJson(json);
}

@freezed
class Search with _$Search {
  factory Search({
    @JsonKey(name: 'imdbID')
    required String id,
    @JsonKey(name: 'Title')
    required String title,
    @JsonKey(name: 'Year')
    required String year,
    @JsonKey(name: 'Type')
    required String type,
    @JsonKey(name: 'Poster')
    required String image,
  }) = _Search;

  factory Search.fromJson(Map<String, dynamic> json) => _$SearchFromJson(json);
}
