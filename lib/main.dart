import 'package:flutter/material.dart';
import 'package:navigator2_example/routes/custom_pages_config.dart';
import 'package:navigator2_example/routes/custom_parser.dart';
import 'package:navigator2_example/routes/custom_router_delegate.dart';
import 'package:navigator2_example/screens/cart_page.dart';
import 'package:navigator2_example/screens/checkout_page.dart';
import 'package:navigator2_example/screens/home_page.dart';
import 'package:navigator2_example/screens/login_page.dart';
import 'package:navigator2_example/screens/profile_page.dart';
import 'package:provider/provider.dart';

import 'auto_router/app_router.gr.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
