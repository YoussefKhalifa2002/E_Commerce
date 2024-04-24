import 'package:e_commerce/Home_Screen/account.dart';
import 'package:e_commerce/Home_Screen/cart.dart';
import 'package:e_commerce/Home_Screen/home_screen.dart';
import 'package:e_commerce/Home_Screen/sells.dart';
import 'package:flutter/material.dart';

class NavigationBarBottom extends StatefulWidget {
  static const String routeName = 'Navigation Bar Bottom';
  const NavigationBarBottom({super.key});

  @override
  State<NavigationBarBottom> createState() => _NavigationBarBottom();
}

class _NavigationBarBottom extends State<NavigationBarBottom> {
  int _currentIndex = 0;
  final taps = [const HomeScreen(), Sells(), Cart(), Account()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: taps.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color.fromRGBO(13, 70, 65, 1),
        currentIndex: _currentIndex,
        iconSize: 40,
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color.fromARGB(255, 237, 237, 237),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
            // backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.percent_rounded,
            ),
            label: 'Sells',
            // backgroundColor: Color.fromARGB(255, 213, 8, 8),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart_outlined,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.supervisor_account,
            ),
            label: 'Account',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
