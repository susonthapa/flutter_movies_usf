// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchResponse _$_$_SearchResponseFromJson(Map<String, dynamic> json) {
  return _$_SearchResponse(
    response: json['Response'] as String,
    movies: (json['Search'] as List<dynamic>)
        .map((e) => _Search.fromJson(e as Map<String, dynamic>))
        .toList(),
    error: json['Error'] as String?,
  );
}

Map<String, dynamic> _$_$_SearchResponseToJson(_$_SearchResponse instance) =>
    <String, dynamic>{
      'Response': instance.response,
      'Search': instance.movies,
      'Error': instance.error,
    };

_$_Search _$_$_SearchFromJson(Map<String, dynamic> json) {
  return _$_Search(
    id: json['imdbID'] as String,
    title: json['Title'] as String,
    year: json['Year'] as String,
    type: json['Type'] as String,
    image: json['Poster'] as String,
  );
}

Map<String, dynamic> _$_$_SearchToJson(_$_Search instance) => <String, dynamic>{
      'imdbID': instance.id,
      'Title': instance.title,
      'Year': instance.year,
      'Type': instance.type,
      'Poster': instance.image,
    };
