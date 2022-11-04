import 'package:flutter/material.dart';
import 'package:navigator2_example/routes/custom_pages_config.dart';
import 'package:provider/provider.dart';

import '../routes/custom_router_delegate.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const valueKey = ValueKey('HomePage');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home page'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
            onPressed: () {
              Provider.of<CustomRouterDelegate>(context, listen: false)
                  .setNewRoutePath(cartConfig);
            },
            child: const Text('Cart Page'),
          ),
          ElevatedButton(
            onPressed: () {
              Provider.of<CustomRouterDelegate>(context, listen: false)
                  .setNewRoutePath(checkOutConfig);
            },
            child: const Text('Checkout Page'),
          ),
          ElevatedButton(
            onPressed: () {
              Provider.of<CustomRouterDelegate>(context, listen: false)
                  .setNewRoutePath(profileConfig);
            },
            child: const Text('Profile Page'),
          ),
        ]),
      ),
    );
  }
}
