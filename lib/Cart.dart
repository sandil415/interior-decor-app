import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  final String objectName;
  final String imgPath;
  final int objectCost;

  const Cart({super.key, required this.objectName, required this.objectCost, required this.imgPath});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  int count = 1;
  late int value;   
  late int total;

  @override
  void initState() {
    super.initState();
    value = widget.objectCost; 
    total = value + 5;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
                Text('My Cart', style: TextStyle(fontSize: 18, color: Color(0xFFF4B5A4), fontWeight: FontWeight.bold)),
                Text('')
              ],
            ),
            SizedBox(height: 40),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
              decoration: BoxDecoration(
                color: Color(0xFFFAF0E6),
                borderRadius: BorderRadius.circular(16)
              ),
              child: ListTile(
                leading: Image.asset(widget.imgPath), 
                title: Text(widget.objectName, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFFCC7861)),), 
                subtitle: Text('\$${widget.objectCost}'), 
                trailing: Container(
                  width: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            if(count > 0){
                              count--;
                              value = count * widget.objectCost;
                              total = value + 5;
                            }
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: Color(0xFFCC7861),
                            shape: BoxShape.circle
                          ),
                          child: Icon(Icons.remove, size: 18))
                        ),
                        SizedBox(width: 5),
                      Text('$count'),
                      SizedBox(width: 5),
                      GestureDetector(
                        child: Container(
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: Color(0xFFCC7861),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(Icons.add, size: 18)),
                        onTap: (){
                          setState(() {
                            count++;         
                            value = count * widget.objectCost;    
                            total = value + 5;      
                          });
                        },
                        )
                    ]
                  ),
                ),
              ),
            ),
            SizedBox(height: 200),
            Center(
              child: Text('_____________________________________', style: TextStyle(color: Color(0xFFF4B5A4), fontSize: 24, fontWeight: FontWeight.w100), textAlign: TextAlign.center, )
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text('SubTotal'),
              Text(''),
              Text('\$$value')
            ],),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text('Tax And Fees'),
              Text(''),
              Text('\$5.00')
            ],),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text('Delivery'),
              Text(''),
              Text('\$0.00')
            ],),
            Center(
              child: Text('_____________________________________', style: TextStyle(color: Color(0xFFF4B5A4), fontSize: 24, fontWeight: FontWeight.w100), textAlign: TextAlign.center, )
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text('Total', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Text(''),
              Text('\$$total')
            ],),
            SizedBox(height: 25),
            Center(
              child: ElevatedButton(
                  child: Text('Check Out', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFFCC7861))),
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFF4B5A4),
                    elevation: 0,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 18)
                  )
                ),
            )
          ]
        ),
      )
    );
  }
}


