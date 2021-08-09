import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:movies_usf/router/ui_pages.dart';

@injectable
class AppRoutingParser extends RouteInformationParser<PageConfiguration> {

  AppRoutingParser();

  @override
  Future<PageConfiguration> parseRouteInformation(
      RouteInformation routeInformation) async {
    final uri = Uri.parse(routeInformation.location!);
    if (uri.pathSegments.isEmpty) {
      return HomePageConfig;
    }

    final path = '/' + uri.pathSegments[0];
    switch (path) {
      case HomePath:
        return HomePageConfig;
      case DetailsPath:
        return DetailsPageConfig;
      default:
        return HomePageConfig;
    }
  }

  @override
  RouteInformation restoreRouteInformation(PageConfiguration configuration) {
    switch (configuration.uiPage) {
      case Pages.HOME:
        return const RouteInformation(location: HomePath);
      case Pages.MOVIE_DETAILS:
        return const RouteInformation(location: DetailsPath);
      default:
        return const RouteInformation(location: HomePath);
    }
  }
}
