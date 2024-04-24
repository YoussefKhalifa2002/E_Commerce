import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Center(
            child: Text(
              'Cart',
              style: TextStyle(fontSize: 50),
            ),
          ),
        ],
      ),
    );
  }
}
