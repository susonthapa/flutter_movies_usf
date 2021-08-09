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
      ContentStatus contentStatus = ContentStatus.loaded,
      List<Movie> history = const [],
      HomeNavArgs nav = const HomeNavArgs()}) {
    return _HomeState(
      searchResult: searchResult,
      contentStatus: contentStatus,
      history: history,
      nav: nav,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  List<Movie> get searchResult => throw _privateConstructorUsedError;
  ContentStatus get contentStatus => throw _privateConstructorUsedError;
  List<Movie> get history => throw _privateConstructorUsedError;
  HomeNavArgs get nav => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call(
      {List<Movie> searchResult,
      ContentStatus contentStatus,
      List<Movie> history,
      HomeNavArgs nav});

  $ContentStatusCopyWith<$Res> get contentStatus;
  $HomeNavArgsCopyWith<$Res> get nav;
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
    Object? history = freezed,
    Object? nav = freezed,
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
      history: history == freezed
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      nav: nav == freezed
          ? _value.nav
          : nav // ignore: cast_nullable_to_non_nullable
              as HomeNavArgs,
    ));
  }

  @override
  $ContentStatusCopyWith<$Res> get contentStatus {
    return $ContentStatusCopyWith<$Res>(_value.contentStatus, (value) {
      return _then(_value.copyWith(contentStatus: value));
    });
  }

  @override
  $HomeNavArgsCopyWith<$Res> get nav {
    return $HomeNavArgsCopyWith<$Res>(_value.nav, (value) {
      return _then(_value.copyWith(nav: value));
    });
  }
}

/// @nodoc
abstract class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(
          _HomeState value, $Res Function(_HomeState) then) =
      __$HomeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Movie> searchResult,
      ContentStatus contentStatus,
      List<Movie> history,
      HomeNavArgs nav});

  @override
  $ContentStatusCopyWith<$Res> get contentStatus;
  @override
  $HomeNavArgsCopyWith<$Res> get nav;
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
    Object? history = freezed,
    Object? nav = freezed,
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
      history: history == freezed
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      nav: nav == freezed
          ? _value.nav
          : nav // ignore: cast_nullable_to_non_nullable
              as HomeNavArgs,
    ));
  }
}

/// @nodoc

class _$_HomeState with DiagnosticableTreeMixin implements _HomeState {
  _$_HomeState(
      {this.searchResult = const [],
      this.contentStatus = ContentStatus.loaded,
      this.history = const [],
      this.nav = const HomeNavArgs()});

  @JsonKey(defaultValue: const [])
  @override
  final List<Movie> searchResult;
  @JsonKey(defaultValue: ContentStatus.loaded)
  @override
  final ContentStatus contentStatus;
  @JsonKey(defaultValue: const [])
  @override
  final List<Movie> history;
  @JsonKey(defaultValue: const HomeNavArgs())
  @override
  final HomeNavArgs nav;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState(searchResult: $searchResult, contentStatus: $contentStatus, history: $history, nav: $nav)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeState'))
      ..add(DiagnosticsProperty('searchResult', searchResult))
      ..add(DiagnosticsProperty('contentStatus', contentStatus))
      ..add(DiagnosticsProperty('history', history))
      ..add(DiagnosticsProperty('nav', nav));
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
                    .equals(other.contentStatus, contentStatus)) &&
            (identical(other.history, history) ||
                const DeepCollectionEquality()
                    .equals(other.history, history)) &&
            (identical(other.nav, nav) ||
                const DeepCollectionEquality().equals(other.nav, nav)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(searchResult) ^
      const DeepCollectionEquality().hash(contentStatus) ^
      const DeepCollectionEquality().hash(history) ^
      const DeepCollectionEquality().hash(nav);

  @JsonKey(ignore: true)
  @override
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  factory _HomeState(
      {List<Movie> searchResult,
      ContentStatus contentStatus,
      List<Movie> history,
      HomeNavArgs nav}) = _$_HomeState;

  @override
  List<Movie> get searchResult => throw _privateConstructorUsedError;
  @override
  ContentStatus get contentStatus => throw _privateConstructorUsedError;
  @override
  List<Movie> get history => throw _privateConstructorUsedError;
  @override
  HomeNavArgs get nav => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$HomeNavArgsTearOff {
  const _$HomeNavArgsTearOff();

  _HomeNavArgs call({HomeNav type = HomeNav.none, Object? args}) {
    return _HomeNavArgs(
      type: type,
      args: args,
    );
  }
}

/// @nodoc
const $HomeNavArgs = _$HomeNavArgsTearOff();

/// @nodoc
mixin _$HomeNavArgs {
  HomeNav get type => throw _privateConstructorUsedError;
  Object? get args => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeNavArgsCopyWith<HomeNavArgs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeNavArgsCopyWith<$Res> {
  factory $HomeNavArgsCopyWith(
          HomeNavArgs value, $Res Function(HomeNavArgs) then) =
      _$HomeNavArgsCopyWithImpl<$Res>;
  $Res call({HomeNav type, Object? args});
}

/// @nodoc
class _$HomeNavArgsCopyWithImpl<$Res> implements $HomeNavArgsCopyWith<$Res> {
  _$HomeNavArgsCopyWithImpl(this._value, this._then);

  final HomeNavArgs _value;
  // ignore: unused_field
  final $Res Function(HomeNavArgs) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? args = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as HomeNav,
      args: args == freezed ? _value.args : args,
    ));
  }
}

/// @nodoc
abstract class _$HomeNavArgsCopyWith<$Res>
    implements $HomeNavArgsCopyWith<$Res> {
  factory _$HomeNavArgsCopyWith(
          _HomeNavArgs value, $Res Function(_HomeNavArgs) then) =
      __$HomeNavArgsCopyWithImpl<$Res>;
  @override
  $Res call({HomeNav type, Object? args});
}

/// @nodoc
class __$HomeNavArgsCopyWithImpl<$Res> extends _$HomeNavArgsCopyWithImpl<$Res>
    implements _$HomeNavArgsCopyWith<$Res> {
  __$HomeNavArgsCopyWithImpl(
      _HomeNavArgs _value, $Res Function(_HomeNavArgs) _then)
      : super(_value, (v) => _then(v as _HomeNavArgs));

  @override
  _HomeNavArgs get _value => super._value as _HomeNavArgs;

  @override
  $Res call({
    Object? type = freezed,
    Object? args = freezed,
  }) {
    return _then(_HomeNavArgs(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as HomeNav,
      args: args == freezed ? _value.args : args,
    ));
  }
}

/// @nodoc

class _$_HomeNavArgs with DiagnosticableTreeMixin implements _HomeNavArgs {
  const _$_HomeNavArgs({this.type = HomeNav.none, this.args});

  @JsonKey(defaultValue: HomeNav.none)
  @override
  final HomeNav type;
  @override
  final Object? args;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeNavArgs(type: $type, args: $args)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeNavArgs'))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('args', args));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeNavArgs &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.args, args) ||
                const DeepCollectionEquality().equals(other.args, args)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(args);

  @JsonKey(ignore: true)
  @override
  _$HomeNavArgsCopyWith<_HomeNavArgs> get copyWith =>
      __$HomeNavArgsCopyWithImpl<_HomeNavArgs>(this, _$identity);
}

abstract class _HomeNavArgs implements HomeNavArgs {
  const factory _HomeNavArgs({HomeNav type, Object? args}) = _$_HomeNavArgs;

  @override
  HomeNav get type => throw _privateConstructorUsedError;
  @override
  Object? get args => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HomeNavArgsCopyWith<_HomeNavArgs> get copyWith =>
      throw _privateConstructorUsedError;
}
