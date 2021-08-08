import 'dart:async';

import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rxdart/rxdart.dart';

// Widget providerListener<T extends BaseVM>(ChangeNotifierProvider<T> provider,
//     {required OnProviderChange<T> onChange, required Widget child}) {
//   return ProviderListener<T>(
//     onChange: (context, vm) {
//       Fimber.d("onChange: ${vm.state}");
//       onChange(context, vm);
//       vm.resetEffects();
//     },
//     provider: provider,
//     child: child,
//   );
// }

abstract class BaseVM<State> extends ChangeNotifier {
  State _state;

  State get state => _state;

  BaseVM(this._state);

  final bag = CompositeSubscription();

  void setState(State Function(State) updater) {
    _state = updater(_state);
    Fimber.d("notify => state: $_state");
    notifyListeners();
  }

  void setStateOnly(State Function(State) updater) {
    _state = updater(_state);
    Fimber.d("state: $_state");
  }

  void resetEffects();

  @override
  void dispose() {
    bag.clear();
    super.dispose();
    Fimber.i("dispose VM");
  }
}
