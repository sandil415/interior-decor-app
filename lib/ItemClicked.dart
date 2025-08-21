import 'package:flutter/material.dart';
import 'ItemOverview.dart';
import 'TopNavigate.dart';

class ItemClicked extends StatelessWidget {
  final String itemName;
  // final String imgPath;
  final String itemCost;
  const ItemClicked({super.key, required this.itemName, required this.itemCost});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back),
                  ),
                  Text(itemName, style: TextStyle(fontSize: 18, color: Color(0xFFF4B5A4), fontWeight: FontWeight.bold)),
                  Text('')
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TopNavigate(navigateTo: 'Living Room'),
                  Text('|', style: TextStyle(color: Color(0xFFDCBEB6), fontSize: 18, fontWeight: FontWeight.bold)),
                  TopNavigate(navigateTo: 'Decorative Light'),
                  Text('|', style: TextStyle(color: Color(0xFFDCBEB6), fontSize: 18, fontWeight: FontWeight.bold)),
                  TopNavigate(navigateTo: 'Bed')
                ]
              ),
              SizedBox(height: 30),
              ItemOverview(name: itemName, path: 'lib/assets/images/ItemEnlarged.png', clicked: true, cost: itemCost)
            ],
          ),
        ),
      )
    );
  }
}