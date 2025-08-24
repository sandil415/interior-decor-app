import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  const Review({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
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
                  Text('Wishlist', style: TextStyle(fontSize: 18, color: Color(0xFFF4B5A4), fontWeight: FontWeight.bold)),
                  Text('')
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('630 Reviews', style: TextStyle(fontSize: 14)),
                  Text(''),
                  Text('See all')
                ]
              ),
              Column(
                children: [
                  SizedBox(height: 20),
                  ReviewTemp(),
                  SizedBox(height: 20),
                  ReviewTemp(),
                  SizedBox(height: 20),
                  ReviewTemp(),
                  SizedBox(height: 20),
                  ReviewTemp(),
                  SizedBox(height: 20),
                  ReviewTemp(),
                ],
              )
            ]
          ),
        ),
      )
    );
  }
}

class ReviewTemp extends StatelessWidget {
  const ReviewTemp({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('lib/assets/images/ProfilePicture.png'),
      ),
      title: Text(
        'Wade',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // ✅ Align left
        children: [
          Text(
            'Lorem ipsum dolor sit amet consectetur. '
            'Tortor aenean suspendisse pretium nunc non facilisi.',
            style: TextStyle(fontSize: 12),
          ),
          SizedBox(height: 4), 
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.star, color: Colors.yellow, size: 16),
              SizedBox(width: 4),
              Text('5'),
              SizedBox(width: 12),
              Icon(Icons.remove_red_eye, size: 16),
              SizedBox(width: 4),
              Text('654'),
            ],
          ),
        ],
      ),
      isThreeLine: true,
    );
  }
}
