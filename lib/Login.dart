import 'package:flutter/material.dart';
import 'BottomNavBar.dart';
import 'HomePage.dart';
import 'InputField.dart';
import 'SignUp.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                TextButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back)),
                Expanded(
                  child: Center(
                    child: Text(
                      'Log In', 
                      style: TextStyle(
                        color: Color(0xFFF4B5A4),
                        fontSize: 16
                      )
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 28),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Welcome', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Text('Please enter your details to proceed.', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300)),
                  SizedBox(height: 72),
                  InputField(field: "Username or Email", label: "example@example.com",),
                  SizedBox(height: 14),
                  InputField(field: "Password", label: ""),
                  SizedBox(height: 54),
                  Center(
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => BottomNavBar())
                        );
                      },
                      child: Text('Log In', style: TextStyle(fontSize: 20, color: Color(0xFFCC7861), fontWeight: FontWeight.bold)),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(180, 50),
                        elevation: 0,
                        backgroundColor: Color(0xFFF4B5A4),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22)
                        )
                      )
                    )
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: TextButton(
                      onPressed: (){},
                      child: Text('Forgot Password?', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 12)))
                  ),
                  SizedBox(height: 65), 
                  Center(child: Text('or sign up with', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w100))),
                  SizedBox(height: 8),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: (){
                          },
                          child: Icon(Icons.facebook)
                        ), 
                        SizedBox(width: 10),
                        TextButton(
                          onPressed: (){},
                          child: Icon(Icons.facebook)
                        ),
                      ]
                  )),
                  SizedBox(height: 16), 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Dont have an account?', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w100)),
                      TextButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignUp())
                          );
                        },
                        child: Text('Sign Up', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500, color: Color(0xFFCC7861)))
                      )
                    ]
                  )
                ]
              ),
            ),
          ]
        )
      ),
    );
  }
}

