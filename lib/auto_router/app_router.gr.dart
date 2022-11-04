// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../screens/cart_page.dart' as _i5;
import '../screens/checkout_page.dart' as _i4;
import '../screens/home_page.dart' as _i2;
import '../screens/login_page.dart' as _i1;
import '../screens/profile_page.dart' as _i3;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    LoginPageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.LoginPage(),
      );
    },
    HomePageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.HomePage(),
      );
    },
    ProfilePageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.ProfilePage(),
      );
    },
    CheckoutPageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.CheckoutPage(),
      );
    },
    CartPageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.CartPage(),
      );
    },
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(
          LoginPageRoute.name,
          path: '/',
        ),
        _i6.RouteConfig(
          HomePageRoute.name,
          path: '/home-page',
        ),
        _i6.RouteConfig(
          ProfilePageRoute.name,
          path: '/profile-page',
        ),
        _i6.RouteConfig(
          CheckoutPageRoute.name,
          path: '/checkout-page',
        ),
        _i6.RouteConfig(
          CartPageRoute.name,
          path: '/cart-page',
        ),
      ];
}

/// generated route for
/// [_i1.LoginPage]
class LoginPageRoute extends _i6.PageRouteInfo<void> {
  const LoginPageRoute()
      : super(
          LoginPageRoute.name,
          path: '/',
        );

  static const String name = 'LoginPageRoute';
}

/// generated route for
/// [_i2.HomePage]
class HomePageRoute extends _i6.PageRouteInfo<void> {
  const HomePageRoute()
      : super(
          HomePageRoute.name,
          path: '/home-page',
        );

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i3.ProfilePage]
class ProfilePageRoute extends _i6.PageRouteInfo<void> {
  const ProfilePageRoute()
      : super(
          ProfilePageRoute.name,
          path: '/profile-page',
        );

  static const String name = 'ProfilePageRoute';
}

/// generated route for
/// [_i4.CheckoutPage]
class CheckoutPageRoute extends _i6.PageRouteInfo<void> {
  const CheckoutPageRoute()
      : super(
          CheckoutPageRoute.name,
          path: '/checkout-page',
        );

  static const String name = 'CheckoutPageRoute';
}

/// generated route for
/// [_i5.CartPage]
class CartPageRoute extends _i6.PageRouteInfo<void> {
  const CartPageRoute()
      : super(
          CartPageRoute.name,
          path: '/cart-page',
        );

  static const String name = 'CartPageRoute';
}
