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

abstract class BaseVM<State> extends Stream<State> {
  State _state;

  State get state => _state;

  BaseVM(this._state);

  final controller = StreamController<State>.broadcast();

  final bag = CompositeSubscription();

  void setState(State Function(State) updater) {
    final newState = updater(_state);
    if (newState == _state || controller.isClosed) {
      Fimber.w(
        'failed to update state, oldState => $_state, newState => $newState,'
        ' streamIsClosed: ${controller.isClosed}',
      );
      return;
    }
    _state = newState;
    Fimber.d("notify => state: $_state");
    print('notify => state: $_state');
    controller.add(_state);
  }

  void setStateOnly(State Function(State) updater) {
    _state = updater(_state);
    Fimber.d("state: $_state");
  }

  @override
  StreamSubscription<State> listen(void Function(State event)? onData,
      {Function? onError, void Function()? onDone, bool? cancelOnError}) {
    return _stream.listen(
      onData,
      onError: onError,
      onDone: onDone,
      cancelOnError: cancelOnError,
    );
  }

  void resetEffects();

  void dispose() {
    Fimber.i("dispose VM");
    controller.close();
    bag.clear();
  }

  Stream<State> get _stream async* {
    yield* controller.stream;
  }
}
