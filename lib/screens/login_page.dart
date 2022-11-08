import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:navigator2_example/routes/custom_pages_config.dart';
import 'package:navigator2_example/routes/custom_router_delegate.dart';
import 'package:provider/provider.dart';

import '../auto_router/app_router.gr.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  static const valueKey = ValueKey('LoginPage');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    AutoRouter.of(context).push(const HomePageRoute());
                  },
                  child: const Text('Login')))
        ],
      ),
    );
  }
}
