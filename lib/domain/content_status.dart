import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'content_status.freezed.dart';

@freezed
class ContentStatus with _$ContentStatus {
  const factory ContentStatus({required DataStatus status, String? msg}) =
      _ContentStatus;

  static const ContentStatus loaded = ContentStatus(status: DataStatus.loaded);
  static const ContentStatus loading =
      ContentStatus(status: DataStatus.loading);
  static const ContentStatus empty = ContentStatus(status: DataStatus.empty);

  static ContentStatus error(String? msg) =>
      ContentStatus(status: DataStatus.error, msg: msg);
}

enum DataStatus { loading, loaded, empty, error }
