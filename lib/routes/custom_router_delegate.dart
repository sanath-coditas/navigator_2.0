import 'package:flutter/material.dart';
import 'package:navigator2_example/routes/custom_pages_config.dart';
import 'package:navigator2_example/screens/home_page.dart';
import 'package:navigator2_example/screens/login_page.dart';

import '../screens/cart_page.dart';
import '../screens/checkout_page.dart';
import '../screens/profile_page.dart';

class CustomRouterDelegate extends RouterDelegate<CustomPagesConfig>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<CustomPagesConfig> {
  @override
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  String get myRoute => _myRoute;
  String _myRoute = '/login';
  Pages _page = Pages.login;
  set myRoute(String value) {
    if (_myRoute == value) return;
    _myRoute = value;
    if (_myRoute == '/home') {
      _page = Pages.home;
    }
    if (_myRoute == '/cart') {
      _page = Pages.cart;
    }
    if (_myRoute == '/profile') {
      _page = Pages.profile;
    }
    if (_myRoute == '/checkout') {
      _page = Pages.checkout;
    }
    if (_myRoute == '/login') {
      _page = Pages.login;
    }

    notifyListeners();
  }

  bool _handelPopPage(Route<dynamic> route, dynamic result) {
    if (!route.didPop(result)) {
      return false;
    }

    if (_myRoute == '/home') {
      _myRoute = '/login';
      notifyListeners();
      return true;
    }
    if (_myRoute == '/cart' ||
        _myRoute == '/profile' ||
        _myRoute == '/checkout') {
      _myRoute = '/home';
      notifyListeners();
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: [
        const MaterialPage(
          key: ValueKey('login'),
          child: LoginPage(),
        ),
        if (_myRoute == '/home')
          const MaterialPage(key: HomePage.valueKey, child: HomePage()),
        if (_myRoute == '/cart')
          const MaterialPage(key: CartPage.valueKey, child: CartPage()),
        if (_myRoute == '/profile')
          const MaterialPage(key: ProfilePage.valueKey, child: ProfilePage()),
        if (_myRoute == '/checkout')
          const MaterialPage(key: CheckoutPage.valueKey, child: CheckoutPage())
      ],
      onPopPage: _handelPopPage,
    );
  }

  CustomPagesConfig get currentConfig =>
      CustomPagesConfig(key: _myRoute, path: '/$_myRoute', page: _page);

  @override
  Future<void> setNewRoutePath(CustomPagesConfig configuration) async {
    _myRoute = configuration.path;
    notifyListeners();
  }
}
