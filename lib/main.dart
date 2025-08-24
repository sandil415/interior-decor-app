import 'package:flutter/material.dart';

import 'Cart.dart';
import 'Checkout.dart';
import 'EmptyCart.dart';
import 'ItemClicked.dart';
import 'OnBoarding.dart';
import 'Login.dart';
import 'Profile.dart';
import 'SignUp.dart';
import 'HomePage.dart';
import 'Search.dart';
import 'ItemMenu.dart';
import 'EmptyWishlist.dart';
import 'Wishlist.dart';
import 'Review.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App!!',
      theme: ThemeData(
        colorSchemeSeed: Colors.indigo,
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        colorSchemeSeed: Colors.blue,
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      
      initialRoute: '/onboarding',

      routes: {
        '/onboarding': (context) => const OnBoarding(),
        '/login': (context) => const LogIn(),
        '/signup': (context) => const SignUp(),
        '/home': (context) => const HomePage(),
        '/profile': (context) => const Profile(),
        '/search': (context) => const Search(),
        // '/itemmenu': (context) => const ItemMenu(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
