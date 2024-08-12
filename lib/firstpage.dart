import 'package:flutter/material.dart';
import 'package:codefest/signup.dart';
import 'package:codefest/login.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg_icon.jpg'), // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'First Buddy',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 55.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Project by Blank Space', // Replace with your name
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                ),
              ),
              SizedBox(height: 80.0),
              Container(
                width: 350.0, // Adjust the width as needed
                padding: EdgeInsets.all(12.0), // Adjust the padding as needed
                decoration: BoxDecoration(
                  color: Color(0xFF6E8CB6), // Adjust the color as needed
                  borderRadius: BorderRadius.circular(8.0), // Adjust the border radius as needed
                ),
                child: TextButton(
                  onPressed: () {
                    // Navigate to SignupPage
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignupPage()),
                    );
                  },
                  child: Text(
                    'Sign up with email',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              TextButton(
                onPressed: () {
                  // Navigate to LoginPage
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                style: TextButton.styleFrom(
                  primary: Colors.black, // Set text color to blue
                ),
                child: Text('Already have an account? Log in'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
