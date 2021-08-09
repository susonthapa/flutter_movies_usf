// enum to represent what to do on page
import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:movies_usf/di/injection.dart';
import 'package:movies_usf/presentation/common/navigation.dart';
import 'package:movies_usf/presentation/home/home_page.dart';
import 'package:movies_usf/router/ui_pages.dart';

part 'router_vm.freezed.dart';

enum PageState { none, addPage, pop, replace, replaceAll }

@freezed
class PageAction with _$PageAction {
  factory PageAction({
    @Default(PageState.none) state,
    PageConfiguration? page,
  }) = _PageAction;
}

@freezed
class RouterState with _$RouterState {
  factory RouterState(
      {required PageAction currentAction,
      required List<Page> pages}) = _RouterState;
}

final routerVMProvider = ChangeNotifierProvider<RouterVM>(
  (ref) {
    return getIt<RouterVM>();
  },
);

@singleton
class RouterVM extends BaseVM<RouterState> {
  final RouteHandler _routeHandler;

  RouterVM(this._routeHandler)
      : super(RouterState(
          currentAction: PageAction(),
          pages: List.empty(),
        ));

  set action(PageAction action) {
    setState((s) => s.copyWith(currentAction: action));
  }

  void _clearPages() {
    setStateOnly((s) => s.copyWith(pages: []));
  }

  void _removeLastPage() {
    setStateOnly((s) {
      if (s.pages.isNotEmpty) {
        return s.copyWith(pages: s.pages.sublist(0, s.pages.length - 1));
      } else {
        return s;
      }
    });
  }

  List<Page> getPages() {
    return List.unmodifiable(state.pages);
  }

  void replace(PageConfiguration newRoute) {
    _removeLastPage();
    _addPage(newRoute);
  }

  void replaceAll(PageConfiguration newRoute) {
    setNewRoutePath(newRoute);
  }

  void setNewRoutePath(PageConfiguration pageConfig) {
    if (_routeHandler.shouldAddPage(pageConfig, state.pages)) {
      _clearPages();
      _addPage(pageConfig);
    }
  }

  void _addPage(PageConfiguration pageConfig) {
    final page = _routeHandler.getPage(pageConfig, state.pages);
    if (page != null) {
      setStateOnly((s) {
        final pages = List.from(s.pages);
        pages.add(page);
        return s.copyWith(pages: List.unmodifiable(pages));
      });
    }
  }

  void addAll(List<PageConfiguration> routes) {
    _clearPages();
    routes.forEach((route) {
      _addPage(route);
    });
  }

  bool onPopPage(Route<dynamic> route, result) {
    final didPop = route.didPop(result);
    if (!didPop) {
      return false;
    }

    if (canPop()) {
      pop();
      return true;
    } else {
      return false;
    }
  }

  void _removePage(Page page) {
    setState((s) {
      final pages = List.from(s.pages);
      pages.remove(page);
      return s.copyWith(pages: List.unmodifiable(pages));
    });
  }

  void pop() {
    if (canPop()) {
      _removePage(state.pages.last);
    }
  }

  bool canPop() {
    return state.pages.length > 1;
  }

  Future<bool> popRoute() {
    if (canPop()) {
      _removePage(state.pages.last);
      return Future.value(true);
    }

    return Future.value(false);
  }

  List<Page> buildPages() {
    if (state.pages.isEmpty) {
      replaceAll(HomePageConfig);
    } else {
      switch (state.currentAction.state) {
        case PageState.none:
          break;
        case PageState.addPage:
          _addPage(state.currentAction.page!);
          break;
        case PageState.pop:
          pop();
          break;
        case PageState.replace:
          replace(state.currentAction.page!);
          break;
        case PageState.replaceAll:
          replaceAll(state.currentAction.page!);
          break;
        default:
          break;
      }
    }
    setStateOnly((s) => s.copyWith(currentAction: PageAction()));
    return List.unmodifiable(state.pages);
  }

  @override
  void resetEffects() {}
}

@injectable
class RouteHandler {
  MaterialPage _createPage(Widget child, PageConfiguration pageConfig) {
    return MaterialPage(
        child: child,
        key: Key(pageConfig.key) as LocalKey,
        name: pageConfig.path,
        arguments: pageConfig);
  }

  bool shouldAddPage(PageConfiguration pageConfig, List<Page> pages) {
    return pages.isEmpty ||
        (pages.last.arguments as PageConfiguration).uiPage != pageConfig.uiPage;
  }

  Page? getPage(PageConfiguration pageConfig, List<Page> pages) {
    if (shouldAddPage(pageConfig, pages)) {
      switch (pageConfig.uiPage) {
        case Pages.HOME:
          return _createPage(HomePage(), pageConfig);
        default:
          return null;
      }
    }

    return null;
  }
}
