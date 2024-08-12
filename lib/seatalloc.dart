import 'package:flutter/material.dart';

class SeatAllocationPage extends StatelessWidget {
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
                SizedBox(height: 100.0), // Adjust the height as needed
                Text(
                  'Seat Allocation Chart',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Text color
                  ),
                ),
                SizedBox(height: 16.0),
                buildSeatChart(),
                SizedBox(height: 16.0),
                Text(
                  'Your Allocated Seat:',
                  style: TextStyle(
                    fontSize: 16.0,
                    letterSpacing: 1.2,
                    color: Colors.black, // Text color
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  'Seat A-23',
                  style: TextStyle(
                    fontSize: 16.0,
                    letterSpacing: 1.2,
                    color: Colors.black, // Text color
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildSeatChart() {
    return Container(
      width: 300.0, // Adjust the width as needed
      height: 400.0, // Adjust the height as needed
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/seating_chart.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
