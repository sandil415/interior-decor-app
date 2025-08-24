import 'package:flutter/material.dart';

import 'Cart.dart';
import 'EmptyCart.dart';
import 'EmptyWishlist.dart';
import 'HomePage.dart';
import 'Profile.dart';
import 'Wishlist.dart';

class BottomNavBar extends StatefulWidget {
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;

  final List<GlobalKey<NavigatorState>> _navigatorKeys = [
    GlobalKey<NavigatorState>(), // Home
    GlobalKey<NavigatorState>(), // Wishlist
    GlobalKey<NavigatorState>(), // Cart
    GlobalKey<NavigatorState>(), // Profile
  ];

  void _onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  // Back button handling
  Future<bool> _onWillPop() async {
    final NavigatorState currentNavigator =
        _navigatorKeys[currentIndex].currentState!;
    if (currentNavigator.canPop()) {
      currentNavigator.pop();
      return false;
    }
    return true; 
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        body: IndexedStack(
          index: currentIndex,
          children: [
            _buildNavigator(_navigatorKeys[0], HomePage()),
            _buildNavigator(_navigatorKeys[1], EmptyWishlist()),
            _buildNavigator(_navigatorKeys[2], EmptyCart()),
            _buildNavigator(_navigatorKeys[3], Profile()),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: _onTap,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: 'Wishlist'),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: 'Cart'),
            BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Profile'),
          ],
        ),
      ),
    );
  }

  Widget _buildNavigator(GlobalKey<NavigatorState> key, Widget child) {
    return Navigator(
      key: key,
      onGenerateRoute: (settings) => MaterialPageRoute(builder: (_) => child),
    );
  }
}