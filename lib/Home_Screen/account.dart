import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Center(
            child: Text(
              'Account',
              style: TextStyle(fontSize: 50),
            ),
          ),
        ],
      ),
    );
  }
}
