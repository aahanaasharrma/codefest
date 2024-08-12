import 'package:flutter/material.dart';

class CompanyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.jpg'), // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 170.0), // Adjusted to shift down
              Image.asset(
                'assets/images/Rectangle4144.png', // Replace with your logo image path
                width: 100.0,
                height: 100.0,
              ),
              SizedBox(height: 16.0),
              Text(
                'CodeFest',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'Think, Code and Compete',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 32.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Implement the follow button functionality
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey.withOpacity(0.7), // Updated to opaque grey
                    ),
                    child: Text('+ Follow'),
                  ),
                  SizedBox(width: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      // Implement the view jobs button functionality
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey.withOpacity(0.7), // Updated to opaque grey
                    ),
                    child: Text('View Jobs'),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Text(
                'Jobs at CodeFest',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      JobListing('Product Design Manager', 'United States: New York'),
                      JobListing('Product Design Intern', 'India: New Delhi'),
                      JobListing('Fullstack Developer', 'India: Mumbai'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class JobListing extends StatelessWidget {
  final String jobTitle;
  final String location;

  const JobListing(this.jobTitle, this.location);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            jobTitle,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.black, // Keep text color white
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            location,
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.4), // Updated to opaque grey
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    // Implement the save button functionality
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    onPrimary: Colors.black, // Updated to black
                  ),
                  child: Text('Save'),
                ),
              ),
              SizedBox(width: 8.0),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.4), // Updated to opaque grey
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    // Implement the apply button functionality
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    onPrimary: Colors.white,
                  ),
                  child: Text('Apply'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: CompanyPage(),
  ));
}