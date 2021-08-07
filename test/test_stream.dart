import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class TestStream<T> {
  final List<T> values = List.empty(growable: true);

  final Stream<T> _upStream;

  TestStream(this._upStream) {
    init();
  }

  void init() {
    _upStream.listen((item) {
      print('values emitted: $item');
      values.add(item);
    }, onDone:() {
      print('onDone called');
    }, onError: (error) {
      print('onError called: $error');
    });
  }

  TestStream<T> emitsItemsAt(int index, bool Function(T) matcher) {
    final int s = values.length;
    if (s == 0) {
      throw fail('No values');
    }
    if (index >= s) {
      throw fail('Invalid index: $index');
    }
    final value = values[index];
    if (!matcher(value)) {
      throw fail('Value not present');
    }

    return this;
  }

  TestStream<T> emitsItemAt(int index, T item) {
    final int s = values.length;
    if (s == 0) {
      throw fail('No values');
    }
    if (index >= s) {
      throw fail('Invalid index: $index');
    }

    final value = values[index];
    if (!equals(value).matches(item, {})) {
      throw fail(
          'expected: ${item.runtimeType.toString()}, but was: ${value.runtimeType.toString()}');
    }

    return this;
  }

  void emitsItemCount(int count) async {
    final values = await _upStream.toList();
    final s = values.length;
    if (s != count) {
      throw fail('Values count differ; expected: $count, but was $s');
    }
  }

  AssertionError fail(String message) {
    final error = StringBuffer();
    error.write(message);
    error.write(' (values = ${values.length})');

    return AssertionError(error.toString());
  }
}
