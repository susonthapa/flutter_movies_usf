import 'dart:async';

import 'package:test/test.dart';
import 'package:meta/meta.dart';

@isTest
Future<void> vmTest(
  String description,
  Function() tests,
) async {
  test(description, () async {
    await runZonedGuarded(() async {
      tests();
    }, (Object error, _) => throw error);
  });
}

bool equalsValue(dynamic expected, dynamic actual) {
  return equals(expected).matches(actual, {});
}
