import 'package:codefest/signup.dart';
import 'package:codefest/terms.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/images/bg_icon.jpg', // replace with your actual image path
              fit: BoxFit.cover,
            ),
          ),
          // Login Form
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.5), // adjust opacity as needed
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Welcome Text
                  Text(
                    "Let's get you in!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 100.0),
                  // Email Textbox
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Email',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Enter your email',
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.4), // Adjust opacity
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0), // Round edges
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30.0),
                  // Password Textbox
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Password',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Enter your password',
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.4), // Adjust opacity
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0), // Round edges
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40.0), // More spacing
                  // Login Button
                  Container(
                    width: double.infinity, // Full width
                    height: 60.0, // Adjusted height
                    child: ElevatedButton(
                      onPressed: () {
                        // Add your login logic here

                        // Navigate to the home page
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TermsAndConditionsPage(), // Replace HomePage with the actual home page widget
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF6E8CB6), // Slightly darker blue
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0), // Round edges
                        ),
                      ),
                      child: Text('Log me in!'),
                    ),
                  ),
                  SizedBox(height: 30.0), // Additional spacing
                  // Don't have an account? Sign up
                  GestureDetector(
                    onTap: () {
                      // Navigate to signup page
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignupPage()),
                      );
                    },
                    child: Text(
                      "Don't have an account? Sign up",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}