import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:movies_usf/presentation/common/navigation.dart';

class TestChangeNotifier<T> {
  final List<T> values = List.empty(growable: true);

  final BaseVM<T> _vm;

  TestChangeNotifier(this._vm) {
    init();
  }

  void init() {
    // add the emitted values to our internal list
    _vm.addListener(() {
      values.add(_vm.state);
    });
  }

  // verify that the items emitted are matched by the matcher in that order
  Future<void> emitsInOrder(List<bool Function(T)> matcher) async {
    await Future<void>.delayed(Duration.zero);
    _checkNonZero();
    for (int i = 0; i < values.length; i++) {
      if (!matcher[i].call(values[i])) {
        throw fail(
            'Matcher at index: $i is not valid, supplied state: ${values[i]}');
      }
    }
  }

  // check that we at least have some value before accessing it
  void _checkNonZero() {
    final int s = values.length;
    if (s == 0) {
      throw fail('No values');
    }
  }

  // check we are not out of index
  void _checkRange(int index) {
    if (index >= values.length) {
      throw fail('Invalid index: $index');
    }
  }

  // verify a the matcher matches the item at specified index
  Future<void> emitsItemAt(int index, bool Function(T) matcher) async {
    _checkNonZero();
    _checkRange(index);

    final value = values[index];
    if (!matcher(value)) {
      throw fail('Value not present');
    }
  }

 // verify that specific item is emitted at the specified index
  Future<void> emitsStateAt(int index, T item) async {
    _checkNonZero();
    _checkRange(index);

    final value = values[index];
    if (!equals(value).matches(item, {})) {
      throw fail(
          'expected: ${item.runtimeType.toString()}, but was: ${value.runtimeType.toString()}');
    }
  }

  // verify that the specified items count are emitted
  Future<void> emitsItemCount(int count) async {
    final s = values.length;
    if (s != count) {
      throw fail('Values count differ; expected: $count, but was $s');
    }
  }

  // helper that just waits to synchronize the async call
  Future<void> wait() async {
    await Future<void>.value();
  }

  // helper function to throw error
  AssertionError fail(String message) {
    final error = StringBuffer();
    error.write(message);
    error.write(' (values = ${values.length})');

    return AssertionError(error.toString());
  }
}
