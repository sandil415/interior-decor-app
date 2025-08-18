import 'package:flutter/material.dart';
import 'InputField.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
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
                        'Create Account', 
                        style: TextStyle(
                          color: Color(0xFFF4B5A4),
                          fontSize: 16
                        )
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 26),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InputField(field: "Full Name", label: "example@example.com",),
                    SizedBox(height: 14),
                    InputField(field: "Email", label: "example@example.com",),
                    SizedBox(height: 14),
                    InputField(field: "Full Name", label: "+ 123 456 789",),
                    SizedBox(height: 14),
                    InputField(field: "Date Of Birth", label: "DD / MM / YY",),
                    SizedBox(height: 14),
                    InputField(field: "Password", label: ""),
                    SizedBox(height: 14),
                    InputField(field: "Confirm Password", label: "",),
                    SizedBox(height: 14),
                    Center(child: Text("By continuing, you agree to\nTerms of Use and Privacy Policy.", style: TextStyle(fontSize: 12), textAlign: TextAlign.center)),
                    SizedBox(height: 8),
                    Center(
                      child: ElevatedButton(
                        onPressed: (){},
                        child: Text('Sign Up', style: TextStyle(fontSize: 20, color: Color(0xFFCC7861), fontWeight: FontWeight.bold)),
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
                    Center(child: Text('or sign up with', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w100))),
                    SizedBox(height: 8),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: (){},
                            child: Icon(Icons.facebook)
                          ), 
                          SizedBox(width: 10),
                          TextButton(
                            onPressed: (){
                              print('Facebok is pressed');
                            },
                            child: Icon(Icons.facebook)
                          ),
                        ]
                    )),
                    // SizedBox(height: 2), 
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Already have an account?', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w100)),
                        TextButton(
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          child: Text('Log In', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500, color: Color(0xFFCC7861)))
                        )
                      ]
                    )
                  ]
                ),
              ),
            ]
          ),
        )
      ),
    );
  }
}

