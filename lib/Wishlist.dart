import 'package:flutter/material.dart';

class Wishlist extends StatelessWidget {
  final String? itemName;
  final String? imgPath;
  const Wishlist({super.key, this.itemName, this.imgPath});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
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
                Text('Wishlist', style: TextStyle(fontSize: 18, color: Color(0xFFF4B5A4), fontWeight: FontWeight.bold)),
                Text('')
              ],
            ),
            SizedBox(height: 40),
            ListTile(
                leading: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Color(0xFFFAF0E6),
                borderRadius: BorderRadius.circular(16)
              ),
              child: Image.asset(imgPath ?? 'lib/assets/images/GreenBed.png')
              ), 
                title: Text(itemName ?? 'Green Bed', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFFCC7861)),), 
                subtitle: Text('In a laoreet purus. Integer turpis\nquam, laoreet id orci nec, ultrices\nlacinia nunc. Aliquam erat vo'), 
                ),
            ]
        ),
    );
  }
}


