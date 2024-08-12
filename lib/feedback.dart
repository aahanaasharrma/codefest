import 'package:flutter/material.dart';

class FeedbackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg_icon.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 150.0), // Adjust the height as needed
                Text(
                  'Feedback',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Text color
                  ),
                ),
                SizedBox(height: 16.0),
                buildEmailForm(),
                SizedBox(height: 16.0),
                buildFeedbackForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildEmailForm() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'Enter your email address',
          hintStyle: TextStyle(color: Colors.grey),
          border: InputBorder.none,
        ),
        style: TextStyle(color: Colors.black),
      ),
    );
  }

  Widget buildFeedbackForm() {
    return Column(
      children: [
        SizedBox(height: 30.0),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: TextFormField(
            maxLines: 10, // Adjust the number of lines as needed
            decoration: InputDecoration(
              hintText: 'Enter your feedback here...',
              hintStyle: TextStyle(color: Colors.grey),
              border: InputBorder.none,
            ),
            style: TextStyle(color: Colors.black),
          ),
        ),
        SizedBox(height: 30.0),
        ElevatedButton(
          onPressed: () {
            // Implement the logic to submit feedback
            // You can add code here to send feedback to the company
            // For example, you can use an API call to send feedback data
            // to a server or perform any other required action.
          },
          child: Text('Submit Feedback'),
        ),
      ],
    );
  }
}
