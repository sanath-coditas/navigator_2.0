import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:navigator2_example/auto_router/app_router.gr.dart';

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
              AutoRouter.of(context).push(const CartPageRoute());
            },
            child: const Text('Cart Page'),
          ),
          ElevatedButton(
            onPressed: () {
              AutoRouter.of(context).push(const CheckoutPageRoute());
            },
            child: const Text('Checkout Page'),
          ),
          ElevatedButton(
            onPressed: () {
              AutoRouter.of(context).push(const ProfilePageRoute());
            },
            child: const Text('Profile Page'),
          ),
        ]),
      ),
    );
  }
}
