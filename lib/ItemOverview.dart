import 'package:flutter/material.dart';
import 'ItemClicked.dart';

class ItemOverview extends StatelessWidget {
  final String path;
  final String name;
  // final String ? detail;
  final bool clicked;
  final String cost;

  const ItemOverview({super.key, required this.path, required this.name, required this.clicked, required this.cost});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            path,
            ),
          SizedBox(height: clicked ? 16: 10),
          Text(name, style: TextStyle(fontSize: clicked ? 20 : 16, fontWeight: FontWeight.w900)),
          Text(clicked ? 'Lorem ipsum dolor sit amet consectetur. Odio neque commodo id\naenean quis magna. Auctor neque id pharetra gravida. Libero \nscelerisque ut mauris volutpat risus nec facilisi adipiscing. \nAugue mollis amet.' : 'Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit', style: TextStyle(fontSize: clicked ? 13: 12, fontWeight: clicked ? FontWeight.w500: FontWeight.w100)),
          // Text(detail ?? 'Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w100)),
          Text(clicked? '____________________________________________________': '________________________', style: TextStyle(color: Color(0xFFF4B5A4))),
          SizedBox(height:clicked ? 10: 5),
          Row(
            children: [
              Text('\$$cost.00', style: TextStyle(fontSize: clicked ? 16: 12,fontWeight: FontWeight.w500, color: Color(0xFFF4B5A4))),
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
                      Icon(Icons.favorite, color: Color(0xFFFFFFFF), size: 18),
                  ),
                  SizedBox(width: 14),
                  GestureDetector(
                    onTap: (){

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ItemClicked(itemName: this.name, itemCost: cost)
                            )
                          );
                        },
                    child: Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: Color(0xFFF4B5A4),
                        shape: BoxShape.circle
                      ),
                      child: 
                        Icon(Icons.add, color: Color(0xFFFFFFFF), size: 18),
                    ),
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