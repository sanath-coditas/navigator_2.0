import 'package:flutter/material.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});
  static const valueKey = ValueKey('CheckoutPage');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Checkout Page')),
      body: const Center(
        child: Text('Checkout Page'),
      ),
    );
  }
}
