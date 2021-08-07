// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'home_vm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _HomeState call(
      {List<Movie> searchResult = const [],
      ContentStatus contentStatus = ContentStatus.loaded}) {
    return _HomeState(
      searchResult: searchResult,
      contentStatus: contentStatus,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  List<Movie> get searchResult => throw _privateConstructorUsedError;
  ContentStatus get contentStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call({List<Movie> searchResult, ContentStatus contentStatus});

  $ContentStatusCopyWith<$Res> get contentStatus;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? searchResult = freezed,
    Object? contentStatus = freezed,
  }) {
    return _then(_value.copyWith(
      searchResult: searchResult == freezed
          ? _value.searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      contentStatus: contentStatus == freezed
          ? _value.contentStatus
          : contentStatus // ignore: cast_nullable_to_non_nullable
              as ContentStatus,
    ));
  }

  @override
  $ContentStatusCopyWith<$Res> get contentStatus {
    return $ContentStatusCopyWith<$Res>(_value.contentStatus, (value) {
      return _then(_value.copyWith(contentStatus: value));
    });
  }
}

/// @nodoc
abstract class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(
          _HomeState value, $Res Function(_HomeState) then) =
      __$HomeStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Movie> searchResult, ContentStatus contentStatus});

  @override
  $ContentStatusCopyWith<$Res> get contentStatus;
}

/// @nodoc
class __$HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(_HomeState _value, $Res Function(_HomeState) _then)
      : super(_value, (v) => _then(v as _HomeState));

  @override
  _HomeState get _value => super._value as _HomeState;

  @override
  $Res call({
    Object? searchResult = freezed,
    Object? contentStatus = freezed,
  }) {
    return _then(_HomeState(
      searchResult: searchResult == freezed
          ? _value.searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      contentStatus: contentStatus == freezed
          ? _value.contentStatus
          : contentStatus // ignore: cast_nullable_to_non_nullable
              as ContentStatus,
    ));
  }
}

/// @nodoc

class _$_HomeState with DiagnosticableTreeMixin implements _HomeState {
  _$_HomeState(
      {this.searchResult = const [],
      this.contentStatus = ContentStatus.loaded});

  @JsonKey(defaultValue: const [])
  @override
  final List<Movie> searchResult;
  @JsonKey(defaultValue: ContentStatus.loaded)
  @override
  final ContentStatus contentStatus;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState(searchResult: $searchResult, contentStatus: $contentStatus)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeState'))
      ..add(DiagnosticsProperty('searchResult', searchResult))
      ..add(DiagnosticsProperty('contentStatus', contentStatus));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeState &&
            (identical(other.searchResult, searchResult) ||
                const DeepCollectionEquality()
                    .equals(other.searchResult, searchResult)) &&
            (identical(other.contentStatus, contentStatus) ||
                const DeepCollectionEquality()
                    .equals(other.contentStatus, contentStatus)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(searchResult) ^
      const DeepCollectionEquality().hash(contentStatus);

  @JsonKey(ignore: true)
  @override
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  factory _HomeState({List<Movie> searchResult, ContentStatus contentStatus}) =
      _$_HomeState;

  @override
  List<Movie> get searchResult => throw _privateConstructorUsedError;
  @override
  ContentStatus get contentStatus => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
