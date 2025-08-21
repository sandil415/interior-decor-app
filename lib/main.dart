import 'package:flutter/material.dart';

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
      home: const HomePage(),
      // home: const Search(),
      // home: const ItemMenu(),
      // home: const LogIn(),
      // home: const SignUp(),
      debugShowCheckedModeBanner: false,
    );
  }
}
