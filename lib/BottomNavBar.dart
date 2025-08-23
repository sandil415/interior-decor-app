import 'package:flutter/material.dart';

import 'Cart.dart';
import 'HomePage.dart';
import 'Profile.dart';
import 'Wishlist.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;

  void _navigateBottomBar(int index){
    setState((){
      currentIndex = index;
    });
  }

  List <Widget> _pages = [
    HomePage(),
    Wishlist(itemName: 'Demo', ),
    Cart(),
    Profile()
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentIndex],
      bottomNavigationBar: NavigationBar(
      height: 80,
      elevation: 0,
      selectedIndex: 0,
      onDestinationSelected: _navigateBottomBar,
      destinations: const [
        NavigationDestination(icon: Icon(Icons.home), label: 'home'),
        NavigationDestination(icon: Icon(Icons.favorite_border, color: Color(0xFFF4B5A4)), label: 'favorites'),
        NavigationDestination(icon: Icon(Icons.shopping_cart_outlined, color: Color(0xFFF4B5A4)), label: 'cart'),
        NavigationDestination(icon: Icon(Icons.person_outline, color: Color(0xFFF4B5A4)), label: 'profile')
        ],
      ),
    );
  }
}