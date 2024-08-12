import 'package:flutter/material.dart';

class DocumentsPage extends StatelessWidget {
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
        child: Column(
          children: [
            SizedBox(height: 150.0), // Added SizedBox for space
            Text('Documents', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)),
            SizedBox(height: 50.0), // Added SizedBox for space
            ListTile(
              title: Text('Aadhar card number', style: TextStyle(color: Colors.white)),
              subtitle: Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('VERIFIED', style: TextStyle(color: Colors.white)),
                    Icon(Icons.check_circle, color: Colors.white),
                  ],
                ),
              ),
            ),
            SizedBox(height: 50.0), // Added SizedBox for space
            ListTile(
              title: Text('Address', style: TextStyle(color: Colors.white)),
              subtitle: Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('VERIFIED', style: TextStyle(color: Colors.white)),
                    Icon(Icons.check_circle, color: Colors.white),
                  ],
                ),
              ),
            ),
            SizedBox(height: 50.0), // Added SizedBox for space
            ListTile(
              title: Text('10th Result', style: TextStyle(color: Colors.white)),
              subtitle: Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('VERIFIED', style: TextStyle(color: Colors.white)),
                    Icon(Icons.check_circle, color: Colors.white),
                  ],
                ),
              ),
            ),
            SizedBox(height: 50.0), // Added SizedBox for space
            ListTile(
              title: Text('12th Result', style: TextStyle(color: Colors.white)),
              subtitle: Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('VERIFIED', style: TextStyle(color: Colors.white)),
                    Icon(Icons.check_circle, color: Colors.white),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
