import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                Text('My Profile', style: TextStyle(fontSize: 18, color: Color(0xFFF4B5A4), fontWeight: FontWeight.bold)),
                Text('')
              ],
            ),
            SizedBox(height: 40),
            Center(child: Image.asset('lib/assets/images/Profile.png')),
            SizedBox(height: 8),
            Center(
              child: Column(
                children: [
                  Text('Maddison Smith', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('ID:', style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('25030024')
                    ],
                  )
                ],
              )
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: Color(0xFFF4B5A4),
                borderRadius: BorderRadius.circular(16)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Icon(Icons.person_outline),
                      Text('Profile', style: TextStyle(fontSize: 14))
                    ],
                  ),
                  Text('|', style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 24)),
                  Column(
                    children: [
                      Icon(Icons.favorite),
                      Text('Wishlist', style: TextStyle(fontSize: 14))
                    ],
                  ),
                  Text('|', style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 24)),
                  Column(
                    children: [
                      Icon(Icons.shopping_bag_outlined),
                      Text('My Orders', style: TextStyle(fontSize: 14))
                    ],
                  ),
                ],
              )
            ),
            SizedBox(height: 10),
            Options(label: 'Privacy Policy', icon: Icons.key),
            Options(label: 'Payment Method', icon: Icons.payment),
            Options(label: 'Notification', icon: Icons.notification_add),
            Options(label: 'Setting', icon: Icons.settings),
            Options(label: 'Help', icon: Icons.help_outline),
            Options(label: 'Logout', icon: Icons.logout)
          ]
        ),
    );
  }
}

class Options extends StatelessWidget {
  final String label;
  final IconData icon;
  const Options({super.key, required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    return ListTile(leading: Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Color(0xFFF4B5A4),
        shape: BoxShape.circle
      ),
      child: Icon(icon)),
      title: Text(label),
    );
  }
}