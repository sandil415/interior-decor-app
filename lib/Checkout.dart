import 'package:flutter/material.dart';

import 'CompleteOrder.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

List<String> _radioBtnOptions = ['Cash on Delivery', 'Paypal', 'Apple Play', 'Credit Card'];

class _CheckoutState extends State<Checkout> {
  String currentValue = _radioBtnOptions[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(16),
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
                  Text('User Reviews', style: TextStyle(fontSize: 18, color: Color(0xFFF4B5A4), fontWeight: FontWeight.bold)),
                  Text('')
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Shipping Address', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFFCC7861))),
                  Icon(Icons.edit_outlined)
                ],
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Color(0xFFFAF0E6)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Kathryn Murphy', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFFCC7861))),
                    SizedBox(height: 8),
                    Text('2464 Royal Ln. Mesa, New Jersey 45463\n(302) 555-0107 - (406) 555-0120', style: TextStyle(fontSize: 14))
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Order Summary', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFFCC7861))),
                  Icon(Icons.edit_outlined)
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Dining Table Set'),
                      Text('Bedroom Dresser'),
                      Text('Adjustable Lamp')
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('1 item', style: TextStyle(color: Color(0xFFF4B5A4))),
                      Text('2 items', style: TextStyle(color: Color(0xFFF4B5A4))),
                      Text('3 items', style: TextStyle(color: Color(0xFFF4B5A4)))
                    ],
                  ),
                  Text(''),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Text('\$985.00', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFFF4B5A4))),
                  )
                ],
              ),
              SizedBox(height: 20),
              Text('Payment Method', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFFCC7861))),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Color(0xFFFAF0E6)
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: Radio(
                        value: _radioBtnOptions[0],
                        groupValue: currentValue,
                        onChanged: (value){
                          setState(() {
                            currentValue = value.toString();            
                          });
                        },
                      ),
                      title: Text('Cash on Delivery')
                    ),
                    ListTile(
                      leading: Radio(
                        value: _radioBtnOptions[1],
                        groupValue: currentValue,
                        onChanged: (value){
                          setState(() {
                            currentValue = value.toString();            
                          });
                        },
                      ),
                      title: Text('Paypal')
                    ),
                    ListTile(
                      leading: Radio(
                        value: _radioBtnOptions[2],
                        groupValue: currentValue,
                        onChanged: (value){
                          setState(() {
                            currentValue = value.toString();            
                          });
                        },
                      ),
                      title: Text('Apple Play')
                    ),
                    ListTile(
                      leading: Radio(
                        value: _radioBtnOptions[3],
                        groupValue: currentValue,
                        onChanged: (value){
                          setState(() {
                            currentValue = value.toString();            
                          });
                        },
                      ),
                      title: Text('Credit Card')
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text('Delivery Time', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFFCC7861))),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Estimated Delivery', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Text('1 Hour, 25 minutes', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFFF4B5A4))),
                ],
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    backgroundColor: Color(0xFFF4B5A4),
                    elevation: 0,
                    minimumSize: Size(180, 40)
                  ),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CompleteOrder())
                    );
                  },
                  child: Text('Pay Now', style: TextStyle(color: Color(0xFFCC7861), fontSize: 20, fontWeight: FontWeight.bold)),
                ),
              )
            ]
          ),
        ),
    );
  }
}