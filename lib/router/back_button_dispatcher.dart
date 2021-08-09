
import 'package:flutter/material.dart';
import 'package:movies_usf/router/router_delegate.dart';

class AppBackButtonDispatcher extends RootBackButtonDispatcher {
  final AppRouterDelegate _routerDelegate;

  AppBackButtonDispatcher(this._routerDelegate): super();

  Future<bool> didPopRoute() {
    print("pop route");
    return _routerDelegate.popRoute();
  }
}