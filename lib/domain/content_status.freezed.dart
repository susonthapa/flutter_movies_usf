// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'content_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ContentStatusTearOff {
  const _$ContentStatusTearOff();

  _ContentStatus call({required DataStatus status, String? msg}) {
    return _ContentStatus(
      status: status,
      msg: msg,
    );
  }
}

/// @nodoc
const $ContentStatus = _$ContentStatusTearOff();

/// @nodoc
mixin _$ContentStatus {
  DataStatus get status => throw _privateConstructorUsedError;
  String? get msg => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContentStatusCopyWith<ContentStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentStatusCopyWith<$Res> {
  factory $ContentStatusCopyWith(
          ContentStatus value, $Res Function(ContentStatus) then) =
      _$ContentStatusCopyWithImpl<$Res>;
  $Res call({DataStatus status, String? msg});
}

/// @nodoc
class _$ContentStatusCopyWithImpl<$Res>
    implements $ContentStatusCopyWith<$Res> {
  _$ContentStatusCopyWithImpl(this._value, this._then);

  final ContentStatus _value;
  // ignore: unused_field
  final $Res Function(ContentStatus) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? msg = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DataStatus,
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ContentStatusCopyWith<$Res>
    implements $ContentStatusCopyWith<$Res> {
  factory _$ContentStatusCopyWith(
          _ContentStatus value, $Res Function(_ContentStatus) then) =
      __$ContentStatusCopyWithImpl<$Res>;
  @override
  $Res call({DataStatus status, String? msg});
}

/// @nodoc
class __$ContentStatusCopyWithImpl<$Res>
    extends _$ContentStatusCopyWithImpl<$Res>
    implements _$ContentStatusCopyWith<$Res> {
  __$ContentStatusCopyWithImpl(
      _ContentStatus _value, $Res Function(_ContentStatus) _then)
      : super(_value, (v) => _then(v as _ContentStatus));

  @override
  _ContentStatus get _value => super._value as _ContentStatus;

  @override
  $Res call({
    Object? status = freezed,
    Object? msg = freezed,
  }) {
    return _then(_ContentStatus(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DataStatus,
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ContentStatus with DiagnosticableTreeMixin implements _ContentStatus {
  const _$_ContentStatus({required this.status, this.msg});

  @override
  final DataStatus status;
  @override
  final String? msg;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ContentStatus(status: $status, msg: $msg)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ContentStatus'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('msg', msg));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ContentStatus &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(msg);

  @JsonKey(ignore: true)
  @override
  _$ContentStatusCopyWith<_ContentStatus> get copyWith =>
      __$ContentStatusCopyWithImpl<_ContentStatus>(this, _$identity);
}

abstract class _ContentStatus implements ContentStatus {
  const factory _ContentStatus({required DataStatus status, String? msg}) =
      _$_ContentStatus;

  @override
  DataStatus get status => throw _privateConstructorUsedError;
  @override
  String? get msg => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ContentStatusCopyWith<_ContentStatus> get copyWith =>
      throw _privateConstructorUsedError;
}
