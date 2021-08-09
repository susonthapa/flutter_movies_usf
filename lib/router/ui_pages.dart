// paths for each pages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'ui_pages.freezed.dart';

const String HomePath = "/home";
const String DetailsPath = "/details";

// pages in the app
enum Pages {
  HOME,
  MOVIE_DETAILS,
}

// configuration to represent each pages
@freezed
class PageConfiguration with _$PageConfiguration {
  const factory PageConfiguration({
    required String key,
    required String path,
    required Pages uiPage,
  }) = _PageConfiguration;
}

const PageConfiguration HomePageConfig = PageConfiguration(
  key: "Home",
  path: HomePath,
  uiPage: Pages.HOME,
);
const PageConfiguration DetailsPageConfig = PageConfiguration(
  key: "Movie Details",
  path: DetailsPath,
  uiPage: Pages.MOVIE_DETAILS,
);
