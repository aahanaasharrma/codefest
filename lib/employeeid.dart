import 'dart:math'; // Import the Random class
import 'package:flutter/material.dart';

class EmployeeIdPage extends StatelessWidget {
  // Function to generate a random 5-digit employee ID
  String generateRandomEmployeeId() {
    Random random = Random();
    int employeeId = 10000 + random.nextInt(90000);
    return employeeId.toString();
  }

  @override
  Widget build(BuildContext context) {
    String employeeId = generateRandomEmployeeId(); // Generate a random employee ID
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 100.0),
                Text(
                  'Employee ID',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 16.0),
                buildEmployeeDetails('Employee Name', 'Jane Doe'),
                buildEmployeeDetails('Employee ID', employeeId), // Use the generated employee ID
                buildEmployeeDetails('Department', 'Technology'),
                buildEmployeeDetails('Position', 'Software Engineer'),
                buildEmployeeDetails('Joining Date', 'January 1, 2022'),
                SizedBox(height: 16.0),
                Text(
                  'Employee Contact Number',
                  style: TextStyle(
                    fontSize: 16.0,
                    letterSpacing: 1.2,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  '+1 (555) 678-9012',
                  style: TextStyle(
                    fontSize: 16.0,
                    letterSpacing: 1.2,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildEmployeeDetails(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 8.0),
        Text(
          value,
          style: TextStyle(
            fontSize: 16.0,
            letterSpacing: 1.2,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 16.0),
      ],
    );
  }
}
