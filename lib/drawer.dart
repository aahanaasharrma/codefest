import 'package:codefest/aboutus.dart';
import 'package:codefest/documents.dart';
import 'package:codefest/employeeid.dart';
import 'package:codefest/seatalloc.dart';
import 'package:codefest/technews.dart';
import 'package:codefest/ver_process.dart';
import 'package:flutter/material.dart';

import 'feedback.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xFFD9D9D9), // Background color
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 55.0), // Adjusted spacing
            buildHeader(),
            SizedBox(height: 25.0), // Further adjusted spacing
            buildDivider(),
            buildDrawerItem('About Us', () {
              // Add navigation logic for the About Us page
              Navigator.push(context, MaterialPageRoute(builder: (context) => AboutUsPage()));
            }),
            buildDivider(),
            buildDrawerItem('Documents', () {
              // Add navigation logic for the Documentation page
              Navigator.push(context, MaterialPageRoute(builder: (context) => DocumentsPage()));
            }),
            buildDivider(),
            buildDrawerItem('Verification Process', () {
              // Add navigation logic for the Verification Process page
              Navigator.push(context, MaterialPageRoute(builder: (context) => VerificationProcessPage()));
            }),
            buildDivider(),
            buildDrawerItem('Employee ID', () {
              // Add navigation logic for the Employee ID page
              Navigator.push(context, MaterialPageRoute(builder: (context) => EmployeeIdPage()));
            }),
            buildDivider(),
            buildDrawerItem('Seat Allocation', () {
              // Add navigation logic for the Seat page
              Navigator.push(context, MaterialPageRoute(builder: (context) => SeatAllocationPage()));
            }),
            buildDivider(),
            buildDrawerItem('Tech News', () {
              // Add navigation logic for the Seat page
              Navigator.push(context, MaterialPageRoute(builder: (context) => TechNewsScreen()));
            }),
            buildDivider(),
            buildDrawerItem('Feedback', () {
              // Add navigation logic for the Feedback page
              Navigator.push(context, MaterialPageRoute(builder: (context) => FeedbackPage()));
            }),
            buildDivider(),
          ],
        ),
      ),
    );
  }

  Widget buildHeader() {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 40.0,
            backgroundImage: AssetImage('assets/images/Rectangle4143.png'), // Replace with your image path
          ),
          SizedBox(height: 8.0),
          Text(
            'Jane Doe',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.black, // Text color
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDrawerItem(String title, VoidCallback onTap) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
          color: Colors.black, // Text color
        ),
      ),
      onTap: onTap,
    );
  }

  Widget buildDivider() {
    return Divider(
      height: 1.0,
      color: Colors.black,
    );
  }
}

