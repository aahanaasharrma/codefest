import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'login.dart'; // Assuming you have a login page

class SignupPage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<void> signUp(BuildContext context) async {
    final String baseUrl = 'http:// 10.5.191.124:3000'; // Update with your server URL
    final String signupEndpoint = '/registration'; // Specify the signup endpoint

    try {
      final response = await http.post(
        Uri.parse('$baseUrl$signupEndpoint'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          "name": nameController.text,
          "email": emailController.text,
          "num": phoneController.text,
          "password": passwordController.text,
        }),
      );

      if (response.statusCode == 200) {
        // Signup successful, you may handle accordingly
        print('Signup successful');

        // Navigate to login page or perform other actions as needed
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginPage(),
          ),
        );
      } else {
        // Handle signup failure, show error message, etc.
        print('Signup failed. Status code: ${response.statusCode}');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Signup failed. Please try again.'),
          ),
        );
      }
    } catch (error) {
      // Handle network errors, exceptions, etc.
      print('Error during signup: $error');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error during signup. Please try again later.'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/bg.png', // Replace with your background image path
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.5),
              padding: EdgeInsets.all(16.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Let's create an account!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20.0),
                        TextField(
                          controller: nameController,
                          decoration: InputDecoration(
                            labelText: 'Enter your name',
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.4),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.0),
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
                          controller: emailController,
                          decoration: InputDecoration(
                            labelText: 'Enter your email',
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.4),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Phone Number',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20.0),
                        TextField(
                          controller: phoneController,
                          decoration: InputDecoration(
                            labelText: 'Enter your phone number',
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.4),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.0),
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
                          controller: passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Enter your password',
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.4),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 24.0),
                    Container(
                      width: double.infinity,
                      height: 60.0,
                      child: ElevatedButton(
                        onPressed: () {
                          // Validate input and initiate signup
                          if (nameController.text.isNotEmpty &&
                              emailController.text.isNotEmpty &&
                              phoneController.text.isNotEmpty &&
                              passwordController.text.isNotEmpty) {
                            signUp(context);
                          } else {
                            // Show validation error or handle empty fields
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Please fill in all fields.'),
                              ),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF6E8CB6),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        child: Text('Create an account!'),
                      ),
                    ),
                    SizedBox(height: 30.0),
                    GestureDetector(
                      onTap: () {
                        // Navigate to login page
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      child: Text(
                        "Already have an account? Log In",
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
          ),
        ],
      ),
    );
  }
}
