// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'ui_pages.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PageConfigurationTearOff {
  const _$PageConfigurationTearOff();

  _PageConfiguration call(
      {required String key, required String path, required Pages uiPage}) {
    return _PageConfiguration(
      key: key,
      path: path,
      uiPage: uiPage,
    );
  }
}

/// @nodoc
const $PageConfiguration = _$PageConfigurationTearOff();

/// @nodoc
mixin _$PageConfiguration {
  String get key => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  Pages get uiPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PageConfigurationCopyWith<PageConfiguration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageConfigurationCopyWith<$Res> {
  factory $PageConfigurationCopyWith(
          PageConfiguration value, $Res Function(PageConfiguration) then) =
      _$PageConfigurationCopyWithImpl<$Res>;
  $Res call({String key, String path, Pages uiPage});
}

/// @nodoc
class _$PageConfigurationCopyWithImpl<$Res>
    implements $PageConfigurationCopyWith<$Res> {
  _$PageConfigurationCopyWithImpl(this._value, this._then);

  final PageConfiguration _value;
  // ignore: unused_field
  final $Res Function(PageConfiguration) _then;

  @override
  $Res call({
    Object? key = freezed,
    Object? path = freezed,
    Object? uiPage = freezed,
  }) {
    return _then(_value.copyWith(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      uiPage: uiPage == freezed
          ? _value.uiPage
          : uiPage // ignore: cast_nullable_to_non_nullable
              as Pages,
    ));
  }
}

/// @nodoc
abstract class _$PageConfigurationCopyWith<$Res>
    implements $PageConfigurationCopyWith<$Res> {
  factory _$PageConfigurationCopyWith(
          _PageConfiguration value, $Res Function(_PageConfiguration) then) =
      __$PageConfigurationCopyWithImpl<$Res>;
  @override
  $Res call({String key, String path, Pages uiPage});
}

/// @nodoc
class __$PageConfigurationCopyWithImpl<$Res>
    extends _$PageConfigurationCopyWithImpl<$Res>
    implements _$PageConfigurationCopyWith<$Res> {
  __$PageConfigurationCopyWithImpl(
      _PageConfiguration _value, $Res Function(_PageConfiguration) _then)
      : super(_value, (v) => _then(v as _PageConfiguration));

  @override
  _PageConfiguration get _value => super._value as _PageConfiguration;

  @override
  $Res call({
    Object? key = freezed,
    Object? path = freezed,
    Object? uiPage = freezed,
  }) {
    return _then(_PageConfiguration(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      uiPage: uiPage == freezed
          ? _value.uiPage
          : uiPage // ignore: cast_nullable_to_non_nullable
              as Pages,
    ));
  }
}

/// @nodoc

class _$_PageConfiguration
    with DiagnosticableTreeMixin
    implements _PageConfiguration {
  const _$_PageConfiguration(
      {required this.key, required this.path, required this.uiPage});

  @override
  final String key;
  @override
  final String path;
  @override
  final Pages uiPage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PageConfiguration(key: $key, path: $path, uiPage: $uiPage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PageConfiguration'))
      ..add(DiagnosticsProperty('key', key))
      ..add(DiagnosticsProperty('path', path))
      ..add(DiagnosticsProperty('uiPage', uiPage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PageConfiguration &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)) &&
            (identical(other.uiPage, uiPage) ||
                const DeepCollectionEquality().equals(other.uiPage, uiPage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(path) ^
      const DeepCollectionEquality().hash(uiPage);

  @JsonKey(ignore: true)
  @override
  _$PageConfigurationCopyWith<_PageConfiguration> get copyWith =>
      __$PageConfigurationCopyWithImpl<_PageConfiguration>(this, _$identity);
}

abstract class _PageConfiguration implements PageConfiguration {
  const factory _PageConfiguration(
      {required String key,
      required String path,
      required Pages uiPage}) = _$_PageConfiguration;

  @override
  String get key => throw _privateConstructorUsedError;
  @override
  String get path => throw _privateConstructorUsedError;
  @override
  Pages get uiPage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PageConfigurationCopyWith<_PageConfiguration> get copyWith =>
      throw _privateConstructorUsedError;
}
