import 'package:flutter/material.dart';

class EmptyCart extends StatelessWidget {
  const EmptyCart({super.key});

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
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back),
                ),
                Text('My Cart', style: TextStyle(fontSize: 18, color: Color(0xFFF4B5A4), fontWeight: FontWeight.bold)),
                Text('')
              ],
            ),
            SizedBox(height: 200),
            Image.asset('lib/assets/images/Cart.png'),
            SizedBox(height: 16),
            Center(
              child: Text('There Are No Items\nIn Your Cart', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold), textAlign: TextAlign.center,)
            )
          ]
        ),
      )
    );
  }
}


