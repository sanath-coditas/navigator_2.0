import 'package:auto_route/auto_route.dart';
import 'package:navigator2_example/screens/cart_page.dart';
import 'package:navigator2_example/screens/checkout_page.dart';
import 'package:navigator2_example/screens/home_page.dart';
import 'package:navigator2_example/screens/login_page.dart';
import 'package:navigator2_example/screens/profile_page.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  AutoRoute(page: LoginPage, initial: true),
  AutoRoute(page: HomePage),
  AutoRoute(page: ProfilePage),
  AutoRoute(page: CheckoutPage),
  AutoRoute(page: CartPage),
])
class $AppRouter {}
