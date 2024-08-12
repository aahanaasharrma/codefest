import 'package:flutter/material.dart';

class Events extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bg_icon.jpg'), // Replace with your image path
              fit: BoxFit.cover,
            ),
          ),
          child: Center(             // Add more company boxes as needed
                  SizedBox(height: 16.0),
                  Text(
                    '\nJobs at CodeFest',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  JobListing('Product Design Manager', 'United States: New York'),
                  JobListing('Product Design Intern', 'India: New Delhi'),
                  JobListing('Fullstack Developer', 'India: Mumbai'),
                  // Additional job listings can be added here
                  SizedBox(height: 16.0),
                  buildApplyForJobSection(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCompanyBox({
    required String logo,
    required String name,
    required String employees,
    required String description,
    required List<String> roundedBoxes,
  }) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            logo,
            height: 50.0,
            width: 50.0,
          ),
          SizedBox(height: 8.0),
          Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(employees),
          SizedBox(height: 8.0),
          Text(
            description,
            style: TextStyle(
              color: Colors.black54,
            ),
          ),
          SizedBox(height: 8.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: roundedBoxes
                .map(
                  (boxText) => Container(
                margin: EdgeInsets.only(top: 4.0),
                padding: EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  color: Color(0xFF6E8CB6),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Text(
                  boxText,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            )
                .toList(),
          ),
          SizedBox(height: 8.0),
          buildHiringSection(),
        ],
      ),
    );
  }

  Widget buildHiringSection() {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.black,
            width: 1.0,
          ),
        ),
      ),
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: GestureDetector(
        onTap: () {
          // Add navigation logic to the specific hiring page
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '5 Positions Open',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 8.0),
            Icon(
              Icons.arrow_forward,
              color: Colors.black,
              size: 20.0,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildApplyForJobSection() {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.black,
            width: 1.0,
          ),
        ),
      ),
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: GestureDetector(
        onTap: () {
          // Implement the apply for job functionality
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 8.0),
            Icon(
              Icons.arrow_forward,
              color: Colors.black,
              size: 20.0,
            ),
          ],
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
                  child: Text('Save Link'),
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