import 'package:flutter/material.dart';
import 'custom_router_delegate.dart';


class BackButtonDispatcher extends RootBackButtonDispatcher {
  final CustomRouterDelegate _routerDelegate;

  BackButtonDispatcher(this._routerDelegate) : super();

  @override
  Future<bool> didPopRoute() {
    return _routerDelegate.popRoute();
  }
}