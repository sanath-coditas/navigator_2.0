import 'package:flutter/material.dart';
import 'package:navigator2_example/routes/custom_pages_config.dart';

class CustomParser extends RouteInformationParser<CustomPagesConfig> {
  @override
  Future<CustomPagesConfig> parseRouteInformation(
      RouteInformation routeInformation) async {
    final uri = Uri.parse(routeInformation.location!);
    if (uri.pathSegments.isEmpty) {
      return loginConfig;
    }
    final path = '/${uri.pathSegments[0]}';
    switch (path) {
      case homePath:
        return homeConfig;
      case loginPath:
        return loginConfig;
      case profilePath:
        return profileConfig;
      case cartPath:
        return cartConfig;
      case checkoutPath:
        return checkOutConfig;
      default:
        return loginConfig;
    }
  }

  @override
  RouteInformation restoreRouteInformation(CustomPagesConfig configuration) {
    switch (configuration.page) {
      case Pages.cart:
        return const RouteInformation(location: cartPath);
      case Pages.login:
        return const RouteInformation(location: loginPath);
      case Pages.profile:
        return const RouteInformation(location: profilePath);
      case Pages.home:
        return const RouteInformation(location: homePath);
      case Pages.checkout:
        return const RouteInformation(location: checkoutPath);
      default:
        return const RouteInformation(location: loginPath);
    }
  }
}
