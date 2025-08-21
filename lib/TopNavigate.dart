import 'package:flutter/material.dart';

class TopNavigate extends StatelessWidget {
  final String navigateTo;
  const TopNavigate({super.key, required this.navigateTo});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){},
      child: Text(navigateTo, style: TextStyle(color: Color(0xFFDCBEB6), fontSize: 14)),
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFFFFFFFF),
        elevation: 0
      )
    );
  }
}