import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});
  static const valueKey = ValueKey('CartPage');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cart Page')),
      body: const Center(
        child: Text('Cart Page'),
      ),
    );
  }
}
