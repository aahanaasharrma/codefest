import 'package:flutter/material.dart';
import 'offer.dart'; // Import your OfferPage

class TermsAndConditionsPage extends StatelessWidget {
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
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 130.0, left: 16.0, right: 16.0, bottom: 16.0),
                color: Colors.black.withOpacity(0.5),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Terms and Conditions',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 40.0), // Increased spacing
                      Text(
                        'By accessing, using, or participating in any activities related to this agreement, you agree to maintain strict confidentiality regarding any confidential information disclosed to you. This includes refraining from disclosing, sharing, or using such information for any purpose other than the intended collaboration, unless explicitly authorized in writing.',
                        style: TextStyle(fontSize: 16.0, color: Colors.white, height: 1.5),
                      ),
                      SizedBox(height: 40.0), // Increased spacing
                      Text(
                        'By signing, you agree not to engage in similar business activities or work for competitors for a specified period post-employment. Breach may result in legal action. This agreement protects company interests but may vary by jurisdiction. Consult legal advice before signing.',
                        style: TextStyle(fontSize: 16.0, color: Colors.white, height: 1.5),
                      ),
                      SizedBox(height: 40.0), // Increased spacing
                      // I Accept Button
                      Container(
                        width: double.infinity, // Set width to infinity
                        height: 60.0, // Increased button height
                        margin: EdgeInsets.only(top: 24.0), // Added margin to the top
                        child: ElevatedButton(
                          onPressed: () {
                            // Navigate to the OfferPage when 'I Accept' is pressed
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Offer()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFF6E8CB6), // Slightly darker blue
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          child: Text(
                            'I Accept',
                            style: TextStyle(color: Colors.white),
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
      ),
    );
  }
}
