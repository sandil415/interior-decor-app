import 'package:flutter/material.dart';

import 'BottomNavBar.dart';

class CompleteOrder extends StatelessWidget {
  const CompleteOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: (){
                    if(Navigator.of(context).canPop()){
                      Navigator.of(context).pop();
                    } else{
                      print('Cannot navigate back');
                    }                },
                  child: Icon(Icons.arrow_back),
                ),
                Text('My Cart', style: TextStyle(fontSize: 18, color: Color(0xFFF4B5A4), fontWeight: FontWeight.bold)),
                Text('')
              ],
            ),
            SizedBox(height: 180),
            Image.asset('lib/assets/images/CheckProgress.png'),
            SizedBox(height: 16),
            Center(
              child: Column(
                children: [
                  Text('Thank You', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFFCC7861)), textAlign: TextAlign.center),
                  Text('Your Order is Complete', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), textAlign: TextAlign.center)
                  ],
              ),
            ),
            SizedBox(height: 140),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                    backgroundColor: Color(0xFFFAF0E6),
                    elevation: 0,
                    minimumSize: const Size(140, 48)
                  ),
                  child: Text("Return Home", style: TextStyle(fontWeight: FontWeight.bold)),
                  onPressed: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => BottomNavBar())
                    );
                  },
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                    backgroundColor: Color(0xFFFAF0E6),
                    elevation: 0,
                    minimumSize: const Size(140, 48)
                  ),
                  child: Text("Try Again", style: TextStyle(fontWeight: FontWeight.bold)),
                  onPressed: (){
                    
                  },
                )
              ],
            )
          ]
        ),
      )
    );

  }
}