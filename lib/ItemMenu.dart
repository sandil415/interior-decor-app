import 'package:flutter/material.dart';

import 'ItemOverview.dart';

class ItemMenu extends StatelessWidget {
  final String name;
  
  const ItemMenu ({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
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
                  Text(name, style: TextStyle(fontSize: 18, color: Color(0xFFF4B5A4), fontWeight: FontWeight.bold)),
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
              Row(
                children: [
                ItemOverview(path: 'lib/assets/images/SingleBed.png', name: 'Single Bed', cost: '294'),
                Expanded(child: Text('')),
                ItemOverview(path: 'lib/assets/images/GreenBed.png', name: 'Green Bed', cost: '285')
                ]
              ),
              SizedBox(height: 20),
              Row(
                children: [
                ItemOverview(path: 'lib/assets/images/BrownBed.png', name: 'Brown Bed', cost: '280'),
                Expanded(child: Text('')),
                ItemOverview(path: 'lib/assets/images/KingBed.png', name: 'KingBed', cost: '405')
                ]
              ),
              SizedBox(height: 20),
              Row(
                children: [
                ItemOverview(path: 'lib/assets/images/StylishBed.png', name: 'Stylish Bed', cost: '294'),
                Expanded(child: Text('')),
                ItemOverview(path: 'lib/assets/images/FullBed.png', name: 'Full Bed', cost: '257')
                ]
              ),
              SizedBox(height: 20)
            ],
          ),
        ),
      )
    );
  }
}

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