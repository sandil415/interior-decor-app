import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.arrow_back),
                Text('Search', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFFCC7861))),
                SizedBox(height: 0)
              ],
            ),
            SizedBox(height: 15),
            TextField(
              decoration: InputDecoration(
                hintText: "Search",
                contentPadding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFCC7861),
                    width: 2
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFCC7861), width: 2),
                  borderRadius: BorderRadius.circular(30),
                )
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Top Searches', style: TextStyle(color: Color(0xFFCC7861), fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 18),
                  TopSearchesTempt(name: 'Bed'),
                  SizedBox(height: 8),
                  TopSearchesTempt(name: 'Lamp'),
                  SizedBox(height: 8),
                  TopSearchesTempt(name: 'Plastic Plants'),
                  SizedBox(height: 8),
                  TopSearchesTempt(name: 'Carpet'),
                  SizedBox(height: 8),
                  TopSearchesTempt(name: 'Sofa'),
                  SizedBox(height: 8),
                  TopSearchesTempt(name: 'Blue Chairs'),
                  SizedBox(height: 8)
                ]
              ),
            )
          ]
        ),
      )
    );
  }
}

class TopSearchesTempt extends StatelessWidget {
final String name;

  const TopSearchesTempt({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: Color(0xFFFAF0E6),
        minimumSize: Size(double.infinity, 60),
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20)
      ),
      onPressed: (){},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(4),
            height: 36,
            width: 36,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFFF4B5A4),
            ),
            child: Icon(Icons.search, color: Colors.black)),
            SizedBox(width: 30),
            Text(name, style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}