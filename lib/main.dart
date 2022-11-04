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

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  CustomParser parser = CustomParser();
  CustomRouterDelegate customRouterDelegate = CustomRouterDelegate();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CustomRouterDelegate>(
      create: (context) {
        customRouterDelegate.setInitialRoutePath(loginConfig);
        return customRouterDelegate;
      },
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routeInformationParser: parser,
        routerDelegate: customRouterDelegate,
      ),
    );
  }
}
