import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:movies_usf/presentation/common/navigation.dart';

class TestChangeProvider<T> {
  final List<T> values = List.empty(growable: true);

  final BaseVM<T> _vm;

  TestChangeProvider(this._vm) {
    init();
  }

  void init() {
    _vm.addListener(() {
      values.add(_vm.state);
    });
  }

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

  void _checkNonZero() {
    final int s = values.length;
    if (s == 0) {
      throw fail('No values');
    }
  }

  void _checkRange(int index) {
    if (index >= values.length) {
      throw fail('Invalid index: $index');
    }
  }

  Future<void> emitsItemAt(int index, bool Function(T) matcher) async {
    _checkNonZero();
    _checkRange(index);

    final value = values[index];
    if (!matcher(value)) {
      throw fail('Value not present');
    }
  }

  Future<void> emitsStateAt(int index, T item) async {
    _checkNonZero();
    _checkRange(index);

    final value = values[index];
    if (!equals(value).matches(item, {})) {
      throw fail(
          'expected: ${item.runtimeType.toString()}, but was: ${value.runtimeType.toString()}');
    }
  }

  Future<void> emitsItemCount(int count) async {
    final s = values.length;
    if (s != count) {
      throw fail('Values count differ; expected: $count, but was $s');
    }
  }

  Future<void> wait() async {
    await Future<void>.value();
  }

  AssertionError fail(String message) {
    final error = StringBuffer();
    error.write(message);
    error.write(' (values = ${values.length})');

    return AssertionError(error.toString());
  }
}
