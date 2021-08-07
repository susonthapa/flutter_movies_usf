
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'lce.freezed.dart';

@freezed
class Lce<T> with _$Lce<T> {
  const factory Lce.loading() = Loading;
  const factory Lce.content(T content) = Content;
  const factory Lce.error([String? message]) = Error;

}
