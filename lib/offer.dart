import 'dart:convert';
import 'package:codefest/verification.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Offer extends StatelessWidget {
  final String serverUrl = 'http://192.168.112.218:3000'; // Replace with your Node.js server URL
  final String serverEndpoint = '/send-email'; // Replace with your server endpoint

  Future<void> _sendEmailConfirmation() async {
    try {
      final response = await http.post(
        Uri.parse('$serverUrl$serverEndpoint'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'recipient': 'devangana1910@gmail.com'}), // Replace with recipient email
      );

      if (response.statusCode == 200) {
        print('Email sent successfully');
      } else {
        print('Failed to send email. Status code: ${response.statusCode}');
      }
    } catch (error) {
      print('Error sending email: $error');
      // Handle the error as needed
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Spacing from the top
            SizedBox(height: 16.0),

            // Icon at the top-left corner
            Image.asset(
              'assets/images/Rectangle4143.png',
              height: 100.0,
              width: 100.0,
            ),

            Text(
              'Offer Letter',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            // Rest of the content
            SizedBox(height: 20.0),
            Text(
              '19th October, 2023',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(
              'Jane Doe',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(
              'Estancia Apartments\nFlat no. 5023',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(
              'Dear Jane,',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(
              'We are thrilled to extend an offer for the position of Software Engineer at CodeFest. Your skills and experience align perfectly with our requirements, and we believe you will be a valuable addition to our team.',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(
              'Position: Software Engineer',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(
              'Salary: ₹10L-₹16L',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(
              'Date of Joining: 28th October,2023',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            Row(
              children: [
                Text(
                  'If Date Of Joining is confirm',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 8.0), // Spacing between "If Date Of Joining is confirm" and "Click here"
                // Click here link
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => DocumentVerificationPage()),
                    );
                    _sendEmailConfirmation();

                  },
                  child: Text(
                    'Click here',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.blue, // Set link color
                      decoration: TextDecoration.underline, // Underline the text
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20.0), // Additional spacing

            Text(
              'We are excited about the opportunity to work together and look forward to your positive response.',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(
              'Ria Wadhwa\nCEO CodeFest',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}