// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'router_vm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PageActionTearOff {
  const _$PageActionTearOff();

  _PageAction call({dynamic state = PageState.none, PageConfiguration? page}) {
    return _PageAction(
      state: state,
      page: page,
    );
  }
}

/// @nodoc
const $PageAction = _$PageActionTearOff();

/// @nodoc
mixin _$PageAction {
  dynamic get state => throw _privateConstructorUsedError;
  PageConfiguration? get page => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PageActionCopyWith<PageAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageActionCopyWith<$Res> {
  factory $PageActionCopyWith(
          PageAction value, $Res Function(PageAction) then) =
      _$PageActionCopyWithImpl<$Res>;
  $Res call({dynamic state, PageConfiguration? page});

  $PageConfigurationCopyWith<$Res>? get page;
}

/// @nodoc
class _$PageActionCopyWithImpl<$Res> implements $PageActionCopyWith<$Res> {
  _$PageActionCopyWithImpl(this._value, this._then);

  final PageAction _value;
  // ignore: unused_field
  final $Res Function(PageAction) _then;

  @override
  $Res call({
    Object? state = freezed,
    Object? page = freezed,
  }) {
    return _then(_value.copyWith(
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as dynamic,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as PageConfiguration?,
    ));
  }

  @override
  $PageConfigurationCopyWith<$Res>? get page {
    if (_value.page == null) {
      return null;
    }

    return $PageConfigurationCopyWith<$Res>(_value.page!, (value) {
      return _then(_value.copyWith(page: value));
    });
  }
}

/// @nodoc
abstract class _$PageActionCopyWith<$Res> implements $PageActionCopyWith<$Res> {
  factory _$PageActionCopyWith(
          _PageAction value, $Res Function(_PageAction) then) =
      __$PageActionCopyWithImpl<$Res>;
  @override
  $Res call({dynamic state, PageConfiguration? page});

  @override
  $PageConfigurationCopyWith<$Res>? get page;
}

/// @nodoc
class __$PageActionCopyWithImpl<$Res> extends _$PageActionCopyWithImpl<$Res>
    implements _$PageActionCopyWith<$Res> {
  __$PageActionCopyWithImpl(
      _PageAction _value, $Res Function(_PageAction) _then)
      : super(_value, (v) => _then(v as _PageAction));

  @override
  _PageAction get _value => super._value as _PageAction;

  @override
  $Res call({
    Object? state = freezed,
    Object? page = freezed,
  }) {
    return _then(_PageAction(
      state: state == freezed ? _value.state : state,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as PageConfiguration?,
    ));
  }
}

/// @nodoc

class _$_PageAction with DiagnosticableTreeMixin implements _PageAction {
  _$_PageAction({this.state = PageState.none, this.page});

  @JsonKey(defaultValue: PageState.none)
  @override
  final dynamic state;
  @override
  final PageConfiguration? page;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PageAction(state: $state, page: $page)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PageAction'))
      ..add(DiagnosticsProperty('state', state))
      ..add(DiagnosticsProperty('page', page));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PageAction &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(page);

  @JsonKey(ignore: true)
  @override
  _$PageActionCopyWith<_PageAction> get copyWith =>
      __$PageActionCopyWithImpl<_PageAction>(this, _$identity);
}

abstract class _PageAction implements PageAction {
  factory _PageAction({dynamic state, PageConfiguration? page}) = _$_PageAction;

  @override
  dynamic get state => throw _privateConstructorUsedError;
  @override
  PageConfiguration? get page => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PageActionCopyWith<_PageAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$RouterStateTearOff {
  const _$RouterStateTearOff();

  _RouterState call(
      {required PageAction currentAction, required List<Page> pages}) {
    return _RouterState(
      currentAction: currentAction,
      pages: pages,
    );
  }
}

/// @nodoc
const $RouterState = _$RouterStateTearOff();

/// @nodoc
mixin _$RouterState {
  PageAction get currentAction => throw _privateConstructorUsedError;
  List<Page> get pages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RouterStateCopyWith<RouterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouterStateCopyWith<$Res> {
  factory $RouterStateCopyWith(
          RouterState value, $Res Function(RouterState) then) =
      _$RouterStateCopyWithImpl<$Res>;
  $Res call({PageAction currentAction, List<Page> pages});

  $PageActionCopyWith<$Res> get currentAction;
}

/// @nodoc
class _$RouterStateCopyWithImpl<$Res> implements $RouterStateCopyWith<$Res> {
  _$RouterStateCopyWithImpl(this._value, this._then);

  final RouterState _value;
  // ignore: unused_field
  final $Res Function(RouterState) _then;

  @override
  $Res call({
    Object? currentAction = freezed,
    Object? pages = freezed,
  }) {
    return _then(_value.copyWith(
      currentAction: currentAction == freezed
          ? _value.currentAction
          : currentAction // ignore: cast_nullable_to_non_nullable
              as PageAction,
      pages: pages == freezed
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as List<Page>,
    ));
  }

  @override
  $PageActionCopyWith<$Res> get currentAction {
    return $PageActionCopyWith<$Res>(_value.currentAction, (value) {
      return _then(_value.copyWith(currentAction: value));
    });
  }
}

/// @nodoc
abstract class _$RouterStateCopyWith<$Res>
    implements $RouterStateCopyWith<$Res> {
  factory _$RouterStateCopyWith(
          _RouterState value, $Res Function(_RouterState) then) =
      __$RouterStateCopyWithImpl<$Res>;
  @override
  $Res call({PageAction currentAction, List<Page> pages});

  @override
  $PageActionCopyWith<$Res> get currentAction;
}

/// @nodoc
class __$RouterStateCopyWithImpl<$Res> extends _$RouterStateCopyWithImpl<$Res>
    implements _$RouterStateCopyWith<$Res> {
  __$RouterStateCopyWithImpl(
      _RouterState _value, $Res Function(_RouterState) _then)
      : super(_value, (v) => _then(v as _RouterState));

  @override
  _RouterState get _value => super._value as _RouterState;

  @override
  $Res call({
    Object? currentAction = freezed,
    Object? pages = freezed,
  }) {
    return _then(_RouterState(
      currentAction: currentAction == freezed
          ? _value.currentAction
          : currentAction // ignore: cast_nullable_to_non_nullable
              as PageAction,
      pages: pages == freezed
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as List<Page>,
    ));
  }
}

/// @nodoc

class _$_RouterState with DiagnosticableTreeMixin implements _RouterState {
  _$_RouterState({required this.currentAction, required this.pages});

  @override
  final PageAction currentAction;
  @override
  final List<Page> pages;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RouterState(currentAction: $currentAction, pages: $pages)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RouterState'))
      ..add(DiagnosticsProperty('currentAction', currentAction))
      ..add(DiagnosticsProperty('pages', pages));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RouterState &&
            (identical(other.currentAction, currentAction) ||
                const DeepCollectionEquality()
                    .equals(other.currentAction, currentAction)) &&
            (identical(other.pages, pages) ||
                const DeepCollectionEquality().equals(other.pages, pages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentAction) ^
      const DeepCollectionEquality().hash(pages);

  @JsonKey(ignore: true)
  @override
  _$RouterStateCopyWith<_RouterState> get copyWith =>
      __$RouterStateCopyWithImpl<_RouterState>(this, _$identity);
}

abstract class _RouterState implements RouterState {
  factory _RouterState(
      {required PageAction currentAction,
      required List<Page> pages}) = _$_RouterState;

  @override
  PageAction get currentAction => throw _privateConstructorUsedError;
  @override
  List<Page> get pages => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RouterStateCopyWith<_RouterState> get copyWith =>
      throw _privateConstructorUsedError;
}
