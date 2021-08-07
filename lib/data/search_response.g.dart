// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchResponse _$_$_SearchResponseFromJson(Map<String, dynamic> json) {
  return _$_SearchResponse(
    response: json['response'] as String,
    movies: (json['movies'] as List<dynamic>)
        .map((e) => _Search.fromJson(e as Map<String, dynamic>))
        .toList(),
    error: json['error'] as String,
  );
}

Map<String, dynamic> _$_$_SearchResponseToJson(_$_SearchResponse instance) =>
    <String, dynamic>{
      'response': instance.response,
      'movies': instance.movies,
      'error': instance.error,
    };

_$_Search _$_$_SearchFromJson(Map<String, dynamic> json) {
  return _$_Search(
    id: json['id'] as String,
    title: json['title'] as String,
    year: json['year'] as String,
    type: json['type'] as String,
    image: json['image'] as String,
  );
}

Map<String, dynamic> _$_$_SearchToJson(_$_Search instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'year': instance.year,
      'type': instance.type,
      'image': instance.image,
    };
