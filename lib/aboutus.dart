import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
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
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 100.0), // Adjust the height as needed
              Text(
                'About Us',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Text color
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Empowering Innovation, Enriching Lives: Unleashing the Potential of Technology for a Brighter Tomorrow.',
                style: TextStyle(
                  fontSize: 16.0,
                  letterSpacing: 1.2,
                  color: Colors.black, // Text color
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'As a pioneering technology company, our steadfast mission is the transformation of concepts into groundbreaking solutions. At our core, we are dedicated to utilizing technology for the enhancement of efficiency and the betterment of lives. Our values center around a commitment to excellence, collaboration, and unwavering integrity. We cultivate a dynamic and inclusive culture, empowering our diverse team to push boundaries and embrace creativity. From comprehensive software development to cutting-edge AI solutions, our services are crafted to address the ever-evolving needs of our esteemed clients. With a steadfast focus on staying at the top of technological advancements, we aspire to make a significant and lasting impact in the digital landscape and beyond.',
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
    );
  }
}
