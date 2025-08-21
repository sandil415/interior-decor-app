import 'package:flutter/material.dart';

import 'Cart.dart';
import 'EmptyCart.dart';
import 'ItemClicked.dart';
import 'OnBoarding.dart';
import 'Login.dart';
import 'SignUp.dart';
import 'HomePage.dart';
import 'Search.dart';
import 'ItemMenu.dart';

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
      // home: const OnBoarding(),
      // home: const EmptyCart(),
      // home: const HomePage(),
      // home: const Search(),
      // home: const ItemMenu(),
      // home: const LogIn(),
      // home: const SignUp(),
      // home: const ItemClicked(itemName: 'DS', itemCost: 120,),
      home: const Cart(objectName: "Demo", objectCost: 120,imgPath: 'lib/assets/images/GreenBed.png',),
      debugShowCheckedModeBanner: false,
    );
  }
}
