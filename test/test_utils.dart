import 'package:test/test.dart';

// helper functions similar to RxJava
StreamMatcher emitsItem<T>(bool Function(T) matcher) {
  return StreamMatcher((queue) async {
    var actual = await queue.next;
    var result = matcher(actual);
    return result ? null : 'emitted an event that failed to match';
  }, '');
}

StreamMatcher emitsItemAt<T>(int index, dynamic Function(T) matcher) {
  return StreamMatcher((queue) async {
    var actual = await queue.lookAhead(index);
    var result = matcher(actual[index]);

    return result ? null : 'emitted an event that failed to match';
  }, '');
}

StreamMatcher emitsItemCount(int count) {
  return StreamMatcher((queue) async {
    var matchState = {};
    var actual = await queue.lookAhead(count);
    Matcher itemMatcher = wrapMatcher(count);

    if (itemMatcher.matches(count, matchState)) return null;

    var mismatchDescription = StringDescription();
    itemMatcher.describeMismatch(
        actual.length, mismatchDescription, matchState, false);

    if (mismatchDescription.length == 0) return '';
    return 'emitted an event that $mismatchDescription';
  }, 'emit an item that');
}

// test extensions
extension StreamTestExtension<T> on Stream<T> {
  void emitsItemAt(int index, bool Function(T) matcher) {
    expect(this, _emitsItemAt(index, matcher));
  }

  void emitsItemCount(int count) {
    expect(this, _emitsItemCount(count));
  }

  StreamMatcher _emitsItemCount(int count) {
    return StreamMatcher((queue) async {
      var actual = await toList();
      return actual.length == count
          ? null
          : 'actual count: ${actual.length}, expected count: $count';
    }, '');
  }

  StreamMatcher _emitsItemAt<T>(int index, bool Function(T) matcher) {
    return StreamMatcher((queue) async {
      var actual = await queue.peek
      var result = matcher(actual[index]);

      return result ? null : 'emitted an event that failed to match';
    }, '');
  }
}

bool equalsValue(dynamic expected, dynamic actual) {
  return equals(expected).matches(actual, {});
}
