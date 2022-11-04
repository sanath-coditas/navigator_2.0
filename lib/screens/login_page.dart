import 'package:flutter/material.dart';
import 'package:navigator2_example/routes/custom_pages_config.dart';
import 'package:navigator2_example/routes/custom_router_delegate.dart';
import 'package:provider/provider.dart';

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
                    Provider.of<CustomRouterDelegate>(context, listen: false)
                        .setNewRoutePath(homeConfig);
                  },
                  child: const Text('Login')))
        ],
      ),
    );
  }
}
