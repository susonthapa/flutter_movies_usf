import 'dart:async';

import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rxdart/rxdart.dart';

Widget providerListener<T extends BaseVM>(ChangeNotifierProvider<T> provider,
    {required OnProviderChange<T> onChange, required Widget child}) {
  return ProviderListener<T>(
    onChange: (context, vm) {
      Fimber.d("onChange: ${vm.state}");
      onChange(context, vm);
      vm.resetEffects();
    },
    provider: provider,
    child: child,
  );
}

Widget providerListenerAutoDispose<T extends BaseVM>(
    AutoDisposeChangeNotifierProvider<T> provider,
    {required OnProviderChange<T> onChange,
    required Widget child}) {
  return ProviderListener<T>(
    onChange: (context, vm) {
      Fimber.d("onChange: ${vm.state}");
      onChange(context, vm);
      vm.resetEffects();
    },
    provider: provider,
    child: child,
  );
}

abstract class BaseVM<State> extends ChangeNotifier {
  // private variable to store the state
  State _state;

  // getter for state
  State get state => _state;

  BaseVM(this._state);

  // bag to handle all the subscriptions scoped to this ViewModel
  final bag = CompositeSubscription();

  // set state and notify to widget
  void setState(State Function(State) updater) {
    _state = updater(_state);
    Fimber.d("notify => state: $_state");
    notifyListeners();
  }

  // set state without notifying the widget
  void setStateOnly(State Function(State) updater) {
    _state = updater(_state);
    Fimber.d("state: $_state");
  }

  // function that will called after some one time effects like navigation
  void resetEffects();

  // clears the subscription
  @override
  void dispose() {
    bag.clear();
    super.dispose();
    Fimber.i("dispose VM");
  }
}
