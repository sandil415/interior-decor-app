import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'Checkout.dart';
import 'ItemOverview.dart';
import 'Review.dart';
import 'TopNavigate.dart';

class ItemClicked extends StatelessWidget {
  final String itemName;
  // final String imgPath;
  final int itemCost;
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(''),
                  ItemOverview(name: itemName, path: 'lib/assets/images/ItemEnlarged.png', clicked: true, cost: itemCost),
                  Text('')
                ],
              ),
              SizedBox(height: 6,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context)=>Review())
                      );
                    },
                    child: Text('User reviews')),
                  RatingBar.builder(
                  minRating: 1,
                  itemSize: 18,
                  itemPadding: EdgeInsets.zero,
                  itemBuilder: (context, _) => Icon(Icons.star, color: Color(0xFFF4B5A4)),
                  onRatingUpdate: (rating){},
                  updateOnDrag: true,
                  )
                ],
              ),
              SizedBox(height: 30),
              ElevatedButton(
                child: Text('Add To Cart', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFFCC7861))),
                onPressed: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Checkout())
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFF4B5A4),
                  elevation: 0,
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 18)
                )
              )
            ],
          ),
        ),
      )
    );
  }
}