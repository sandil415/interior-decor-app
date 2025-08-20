import 'package:flutter/material.dart';

class ItemOverview extends StatelessWidget {
  final String path;
  final String name;
  final String detail;
  final String cost;
  const ItemOverview({super.key, required this.path, required this.name, required this.detail, required this.cost});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(path),
          SizedBox(height: 10),
          Text(name, style: TextStyle(fontWeight: FontWeight.w900)),
          Text(detail, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w100)),
          Text('_________________________', style: TextStyle(color: Color(0xFFF4B5A4))),
          SizedBox(height:5),
          Row(
            children: [
              Text('\$$cost.00', style: TextStyle(fontWeight: FontWeight.w500, color: Color(0xFFF4B5A4))),
              SizedBox(width: 45),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Color(0xFFF4B5A4),
                      shape: BoxShape.circle
                    ),
                    child: 
                      Icon(Icons.favorite, color: Color(0xFFFFFFFF)),
                  ),
                  SizedBox(width: 4),
                  Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Color(0xFFF4B5A4),
                      shape: BoxShape.circle
                    ),
                    child: 
                      Icon(Icons.add, color: Color(0xFFFFFFFF)),
                  )
                ]
              )
            ],
          )
        ]
      )
    );
  }
}