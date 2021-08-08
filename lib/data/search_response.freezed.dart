// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'search_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchResponse _$SearchResponseFromJson(Map<String, dynamic> json) {
  return _SearchResponse.fromJson(json);
}

/// @nodoc
class _$SearchResponseTearOff {
  const _$SearchResponseTearOff();

  _SearchResponse call(
      {@JsonKey(name: 'Response') required String response,
      @JsonKey(name: 'Search') required List<_Search> movies,
      @JsonKey(name: 'Error') String? error}) {
    return _SearchResponse(
      response: response,
      movies: movies,
      error: error,
    );
  }

  SearchResponse fromJson(Map<String, Object> json) {
    return SearchResponse.fromJson(json);
  }
}

/// @nodoc
const $SearchResponse = _$SearchResponseTearOff();

/// @nodoc
mixin _$SearchResponse {
  @JsonKey(name: 'Response')
  String get response => throw _privateConstructorUsedError;
  @JsonKey(name: 'Search')
  List<_Search> get movies => throw _privateConstructorUsedError;
  @JsonKey(name: 'Error')
  String? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchResponseCopyWith<SearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResponseCopyWith<$Res> {
  factory $SearchResponseCopyWith(
          SearchResponse value, $Res Function(SearchResponse) then) =
      _$SearchResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'Response') String response,
      @JsonKey(name: 'Search') List<_Search> movies,
      @JsonKey(name: 'Error') String? error});
}

/// @nodoc
class _$SearchResponseCopyWithImpl<$Res>
    implements $SearchResponseCopyWith<$Res> {
  _$SearchResponseCopyWithImpl(this._value, this._then);

  final SearchResponse _value;
  // ignore: unused_field
  final $Res Function(SearchResponse) _then;

  @override
  $Res call({
    Object? response = freezed,
    Object? movies = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String,
      movies: movies == freezed
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<_Search>,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$SearchResponseCopyWith<$Res>
    implements $SearchResponseCopyWith<$Res> {
  factory _$SearchResponseCopyWith(
          _SearchResponse value, $Res Function(_SearchResponse) then) =
      __$SearchResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'Response') String response,
      @JsonKey(name: 'Search') List<_Search> movies,
      @JsonKey(name: 'Error') String? error});
}

/// @nodoc
class __$SearchResponseCopyWithImpl<$Res>
    extends _$SearchResponseCopyWithImpl<$Res>
    implements _$SearchResponseCopyWith<$Res> {
  __$SearchResponseCopyWithImpl(
      _SearchResponse _value, $Res Function(_SearchResponse) _then)
      : super(_value, (v) => _then(v as _SearchResponse));

  @override
  _SearchResponse get _value => super._value as _SearchResponse;

  @override
  $Res call({
    Object? response = freezed,
    Object? movies = freezed,
    Object? error = freezed,
  }) {
    return _then(_SearchResponse(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String,
      movies: movies == freezed
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<_Search>,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchResponse
    with DiagnosticableTreeMixin
    implements _SearchResponse {
  _$_SearchResponse(
      {@JsonKey(name: 'Response') required this.response,
      @JsonKey(name: 'Search') required this.movies,
      @JsonKey(name: 'Error') this.error});

  factory _$_SearchResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_SearchResponseFromJson(json);

  @override
  @JsonKey(name: 'Response')
  final String response;
  @override
  @JsonKey(name: 'Search')
  final List<_Search> movies;
  @override
  @JsonKey(name: 'Error')
  final String? error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchResponse(response: $response, movies: $movies, error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchResponse'))
      ..add(DiagnosticsProperty('response', response))
      ..add(DiagnosticsProperty('movies', movies))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchResponse &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)) &&
            (identical(other.movies, movies) ||
                const DeepCollectionEquality().equals(other.movies, movies)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(response) ^
      const DeepCollectionEquality().hash(movies) ^
      const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$SearchResponseCopyWith<_SearchResponse> get copyWith =>
      __$SearchResponseCopyWithImpl<_SearchResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SearchResponseToJson(this);
  }
}

abstract class _SearchResponse implements SearchResponse {
  factory _SearchResponse(
      {@JsonKey(name: 'Response') required String response,
      @JsonKey(name: 'Search') required List<_Search> movies,
      @JsonKey(name: 'Error') String? error}) = _$_SearchResponse;

  factory _SearchResponse.fromJson(Map<String, dynamic> json) =
      _$_SearchResponse.fromJson;

  @override
  @JsonKey(name: 'Response')
  String get response => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'Search')
  List<_Search> get movies => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'Error')
  String? get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SearchResponseCopyWith<_SearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Search _$SearchFromJson(Map<String, dynamic> json) {
  return _Search.fromJson(json);
}

/// @nodoc
class _$SearchTearOff {
  const _$SearchTearOff();

  _Search call(
      {@JsonKey(name: 'imdbID') required String id,
      @JsonKey(name: 'Title') required String title,
      @JsonKey(name: 'Year') required String year,
      @JsonKey(name: 'Type') required String type,
      @JsonKey(name: 'Poster') required String image}) {
    return _Search(
      id: id,
      title: title,
      year: year,
      type: type,
      image: image,
    );
  }

  Search fromJson(Map<String, Object> json) {
    return Search.fromJson(json);
  }
}

/// @nodoc
const $Search = _$SearchTearOff();

/// @nodoc
mixin _$Search {
  @JsonKey(name: 'imdbID')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'Title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'Year')
  String get year => throw _privateConstructorUsedError;
  @JsonKey(name: 'Type')
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'Poster')
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchCopyWith<Search> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchCopyWith<$Res> {
  factory $SearchCopyWith(Search value, $Res Function(Search) then) =
      _$SearchCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'imdbID') String id,
      @JsonKey(name: 'Title') String title,
      @JsonKey(name: 'Year') String year,
      @JsonKey(name: 'Type') String type,
      @JsonKey(name: 'Poster') String image});
}

/// @nodoc
class _$SearchCopyWithImpl<$Res> implements $SearchCopyWith<$Res> {
  _$SearchCopyWithImpl(this._value, this._then);

  final Search _value;
  // ignore: unused_field
  final $Res Function(Search) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? year = freezed,
    Object? type = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SearchCopyWith<$Res> implements $SearchCopyWith<$Res> {
  factory _$SearchCopyWith(_Search value, $Res Function(_Search) then) =
      __$SearchCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'imdbID') String id,
      @JsonKey(name: 'Title') String title,
      @JsonKey(name: 'Year') String year,
      @JsonKey(name: 'Type') String type,
      @JsonKey(name: 'Poster') String image});
}

/// @nodoc
class __$SearchCopyWithImpl<$Res> extends _$SearchCopyWithImpl<$Res>
    implements _$SearchCopyWith<$Res> {
  __$SearchCopyWithImpl(_Search _value, $Res Function(_Search) _then)
      : super(_value, (v) => _then(v as _Search));

  @override
  _Search get _value => super._value as _Search;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? year = freezed,
    Object? type = freezed,
    Object? image = freezed,
  }) {
    return _then(_Search(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Search with DiagnosticableTreeMixin implements _Search {
  _$_Search(
      {@JsonKey(name: 'imdbID') required this.id,
      @JsonKey(name: 'Title') required this.title,
      @JsonKey(name: 'Year') required this.year,
      @JsonKey(name: 'Type') required this.type,
      @JsonKey(name: 'Poster') required this.image});

  factory _$_Search.fromJson(Map<String, dynamic> json) =>
      _$_$_SearchFromJson(json);

  @override
  @JsonKey(name: 'imdbID')
  final String id;
  @override
  @JsonKey(name: 'Title')
  final String title;
  @override
  @JsonKey(name: 'Year')
  final String year;
  @override
  @JsonKey(name: 'Type')
  final String type;
  @override
  @JsonKey(name: 'Poster')
  final String image;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Search(id: $id, title: $title, year: $year, type: $type, image: $image)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Search'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('year', year))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('image', image));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Search &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.year, year) ||
                const DeepCollectionEquality().equals(other.year, year)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(year) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(image);

  @JsonKey(ignore: true)
  @override
  _$SearchCopyWith<_Search> get copyWith =>
      __$SearchCopyWithImpl<_Search>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SearchToJson(this);
  }
}

abstract class _Search implements Search {
  factory _Search(
      {@JsonKey(name: 'imdbID') required String id,
      @JsonKey(name: 'Title') required String title,
      @JsonKey(name: 'Year') required String year,
      @JsonKey(name: 'Type') required String type,
      @JsonKey(name: 'Poster') required String image}) = _$_Search;

  factory _Search.fromJson(Map<String, dynamic> json) = _$_Search.fromJson;

  @override
  @JsonKey(name: 'imdbID')
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'Title')
  String get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'Year')
  String get year => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'Type')
  String get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'Poster')
  String get image => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SearchCopyWith<_Search> get copyWith => throw _privateConstructorUsedError;
}
